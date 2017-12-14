using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace ShadespireDB.Views
{
    public partial class AddCard : System.Web.UI.Page
    {
        public class StringWrapper: INotifyPropertyChanged
        {
            private string mText = "";

            public string Text
            {
                get { return mText; }
                set { mText = value; OnPropertyChanged(); }
            }

            public event PropertyChangedEventHandler PropertyChanged;

            protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
            {
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
            }
        }
        public ObservableCollection<StringWrapper> texts = new ObservableCollection<StringWrapper>(); 
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void OnClick(object sender, EventArgs e)
        {
            texts.Add(new StringWrapper());
        }
    }
}