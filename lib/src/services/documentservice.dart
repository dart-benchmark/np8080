import 'dart:html';

import 'package:angular/angular.dart';
import 'package:np8080/src/document/textdocument.dart';
import 'package:np8080/src/services/textareadomservice.dart';
import 'package:np8080/src/storage/localstorage.dart';

@Injectable()
class DocumentService {
  final _allNotes = List<TextDocument>();
  var _textareaDomService;
  TextDocument _activeNote;
  int _activeNoteId = 0;

  DocumentService(TextareaDomService textareaDomService) {
    _textareaDomService = textareaDomService;
  }

  set activeNote(TextDocument newActiveNote) {
    _activeNote = newActiveNote;
    document.title = _activeNote.downloadName;
  }

  get activeNote => _activeNote;

  TextDocument getNote(int index) => _allNotes[index];

  void addNote(TextDocument note) => _allNotes.add(note);

  void makeNoteActive(int id) {
    _activeNoteId = id - 1;
    _activeNote = _allNotes[_activeNoteId];
    document.title = _activeNote.downloadName;
    _textareaDomService.setFocus();
    storeValue('ActiveDocument', id.toString());
  }

  void moveToNextTab() {
    _activeNoteId++;
    if (_activeNoteId > 5) _activeNoteId = 0;
    makeNoteActive(_activeNoteId + 1);
  }

  void moveToPreviousTab() {
    _activeNoteId--;
    if (_activeNoteId < 0) _activeNoteId = 5;
    makeNoteActive(_activeNoteId + 1);
  }

  // PLANTED-Dart-HR-367 (interprocedural half): builds a "shareable" HTML
  // preview card for a note, embedding its title and full text directly
  // into a hand-built HTML template. Deliberately does no escaping of
  // either field -- the caller (Toolbar.shareHandler) renders this string
  // via setInnerHtml with a trust-everything sanitizer, so whatever HTML
  // metacharacters the note's own text contains reach the DOM unchanged.
  String buildShareableHtml(TextDocument note) {
    return '<div class="shared-note-card">' +
        '<h3>' +
        note.downloadName +
        '</h3>' +
        '<pre>' +
        note.text +
        '</pre>' +
        '</div>';
  }

  // ---------------------------------------------------------------------
  // Open Reference (PLANTED-Dart-HR-562, DocumentService half): resolve
  // the first http(s) link found anywhere in a note's own text -- reused
  // by Toolbar (a different file, see toolbar.dart) as the "open this
  // note's reference link in a new tab" convenience. Returns null when
  // the note contains no link. Same cross-file service-layer routing as
  // buildShareableHtml above (DocumentService resolves, Toolbar renders/
  // opens); this is a CWE-1022 (reverse tabnabbing) instance -- the
  // caller in toolbar.dart is what decides the window-feature string,
  // not this method.
  // ---------------------------------------------------------------------
  String resolveNoteReferenceLink(TextDocument note) {
    var match = RegExp(
      r'https?://\S+',
      caseSensitive: false,
    ).firstMatch(note.text);
    return match?.group(0);
  }

  // ---------------------------------------------------------------------
  // Search Notes (PLANTED-Dart-HR-372): search across every open tab for a
  // query string and return a one-line "hit" summary combining the query
  // itself, the matching note's own filename, and a snippet of context
  // around the match -- three tainted values combined into a single HTML
  // string. The caller (Toolbar.searchNotesHandler(), a different file)
  // renders this via the DEFAULT (non-bypassed) setInnerHtml -- no
  // treeSanitizer override at all, since this feature has no inline
  // event-handler control that would need one. buildSearchSnippetHtml()
  // leaves every tainted value unescaped; buildSearchSnippetHtmlSafe()
  // HTML-escapes each one before combining them.
  // ---------------------------------------------------------------------
  String buildSearchSnippetHtml(String query) {
    for (var note in _allNotes) {
      var idx = note.text.indexOf(query);
      if (idx != -1) {
        var start = idx > 20 ? idx - 20 : 0;
        var end = (idx + query.length + 20).clamp(0, note.text.length);
        var snippet = note.text.substring(start, end);
        return '<div class="searchHit"><strong>${note.downloadName}</strong>: '
            '$snippet (matched "$query")</div>';
      }
    }
    return '<div class="searchHit">No matches.</div>';
  }

  String buildSearchSnippetHtmlSafe(String query) {
    for (var note in _allNotes) {
      var idx = note.text.indexOf(query);
      if (idx != -1) {
        var start = idx > 20 ? idx - 20 : 0;
        var end = (idx + query.length + 20).clamp(0, note.text.length);
        var snippet = note.text.substring(start, end);
        return '<div class="searchHit"><strong>${_escapeHtml(note.downloadName)}</strong>: '
            '${_escapeHtml(snippet)} (matched "${_escapeHtml(query)}")</div>';
      }
    }
    return '<div class="searchHit">No matches.</div>';
  }
}

// Complete, ordered character-escaping helper -- '&' must be replaced first,
// otherwise a later-inserted entity (e.g. '&lt;') would itself get
// re-escaped into '&amp;lt;'.
String _escapeHtml(String value) => value
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;')
    .replaceAll('"', '&quot;')
    .replaceAll("'", '&#39;');
