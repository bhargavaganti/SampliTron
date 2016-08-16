#ifndef _WXFILTERSETTINGSDLG_H_
#define _WXFILTERSETTINGSDLG_H_

#include "wx/wx.h"
#include "wxSwitch.h"
#ifdef WIN32
#include <XAudio2.h>
#endif

#define ID_FILTERSETTINGS_DLG 5000
#define SYMBOL_FILTERSETTINGSDLG_STYLE wxCAPTION|wxSYSTEM_MENU|wxCLOSE_BOX
#define SYMBOL_FILTERSETTINGSDLG_TITLE _("Filter Settings")
#define SYMBOL_FILTERSETTINGSDLG_IDNAME ID_FILTERSETTINGS_DLG
#define SYMBOL_FILTERSETTINGSDLG_SIZE wxSize(400, 440)
#define SYMBOL_FILTERSETTINGSDLG_POSITION wxDefaultPosition
#define ID_FILTER_TYPE 5001
#define ID_FILTER_ENABLED 5002
#define ID_FILTER_BUTTON_OK 5003
#define ID_FILTER_FREQUENCY 5004
#define ID_FILTER_Q 5005

class wxFilterSettingsDlg : public wxDialog
{
    DECLARE_DYNAMIC_CLASS( wxFilterSettingsDlg )
    DECLARE_EVENT_TABLE()
public:
    wxFilterSettingsDlg();
    ~wxFilterSettingsDlg();
    wxFilterSettingsDlg( wxWindow* parent, wxWindowID id = SYMBOL_FILTERSETTINGSDLG_IDNAME, const wxString& caption = SYMBOL_FILTERSETTINGSDLG_TITLE, const wxPoint& pos = SYMBOL_FILTERSETTINGSDLG_POSITION, const wxSize& size = SYMBOL_FILTERSETTINGSDLG_SIZE, long style = SYMBOL_FILTERSETTINGSDLG_STYLE );
    bool Create( wxWindow* parent, wxWindowID id = SYMBOL_FILTERSETTINGSDLG_IDNAME, const wxString& caption = SYMBOL_FILTERSETTINGSDLG_TITLE, const wxPoint& pos = SYMBOL_FILTERSETTINGSDLG_POSITION, const wxSize& size = SYMBOL_FILTERSETTINGSDLG_SIZE, long style = SYMBOL_FILTERSETTINGSDLG_STYLE );
    void CreateControls();
    void OnOK( wxCommandEvent& event );
    void OnClose( wxCloseEvent& event );
	bool SetForegroundColour(const wxColour &colour);
	bool SetBackgroundColour(const wxColour &colour);
	void SetEnabled(bool enabled);
	bool GetEnabled();
#ifdef WIN32
	XAUDIO2_FILTER_PARAMETERS GetFilterParameters();
	void SetFilterParameters(XAUDIO2_FILTER_PARAMETERS parameters);
#endif
private:
    wxChoice* _filterType;
    wxButton* _btnOK;
	wxSlider* _slFrequency;
	wxSlider* _slQFactor;
	wxSwitch* _filterEnabled;
    wxColour _backgroundColour;
    wxColour _textColour;
};

#endif