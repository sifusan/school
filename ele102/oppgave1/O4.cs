using System;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;

public class Oppgave4 : Form {
	private const int WINDOW_WIDTH = 500;
	private const int WINDOW_HEIGHT = 150;

	private ArrayList checkBoxes = new ArrayList();
	private CheckBox check4 = new CheckBox();
	private CheckBox check3 = new CheckBox();
	private CheckBox check2 = new CheckBox();
	private CheckBox check1 = new CheckBox();
	private CheckBox check0 = new CheckBox();
	

	private Label resultLabel = new Label {
		Text = "Resultat blir vist her",
		AutoSize = true
	};
	
	private Button calcButton = new Button {
		Text = "Vis som heltall",
		AutoSize = true
	};

	
	private TableLayoutPanel table = new TableLayoutPanel {
	       	Anchor = AnchorStyles.None,
		AutoSize = true,
		ColumnCount = 5,
		RowCount = 1,
	};
	

	Oppgave4() {
		checkBoxes.Add(check4);
		checkBoxes.Add(check3);
		checkBoxes.Add(check2);
		checkBoxes.Add(check1);
		checkBoxes.Add(check0);

		table.Controls.Add(check4, 0, 0);
		table.Controls.Add(check3, 1, 0);
		table.Controls.Add(check2, 2, 0);
		table.Controls.Add(check1, 3, 0);
		table.Controls.Add(check0, 4, 0);
		table.Controls.Add(calcButton, 2, 1);
		table.Controls.Add(resultLabel, 2, 2);
		Size = new Size(WINDOW_WIDTH, WINDOW_HEIGHT);
		this.Controls.Add(table);

		calcButton.Click += new EventHandler (showResults);
		CenterToScreen();
	}

	public static void Main() {
		Application.Run(new Oppgave4());
	}

	private void showResults(object sender, EventArgs e) {
		(string, int) r = getBinaryAndDecimal(this.checkBoxes);
		resultLabel.Text = r.Item1 + "b=" + r.Item2;
	}
	private (string, int) getBinaryAndDecimal(ArrayList al) {
		string result = "";
		foreach(CheckBox cb in al) {
			if (cb.Checked) {
				result = result + "1";
			} else {
				result = result + "0";
			}
		}
		return (result, Convert.ToInt32(result, 2));
	}		
}
