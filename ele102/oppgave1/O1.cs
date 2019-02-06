using System;
using System.Drawing;
using System.Windows.Forms;

public class Oppgave1 : Form {
	private const int WINDOW_WIDTH = 300;
	private const int WINDOW_HEIGHT = 150;

	private Label fahrenheitLabel = new Label{
		Text = "Fahrenheit"
	};
	private Label celsiusLabel = new Label{
		Text = "Celsius"
	};
	private TextBox fahrenheitBox = new TextBox();
	private TextBox celsiusBox = new TextBox();
	private Button calcButton = new Button{
		Text = "Regn om",
		Anchor = AnchorStyles.Bottom,
		Dock = DockStyle.Top
	};
	private Button clearButton = new Button {
		Text = "Fjern data",
		Anchor = AnchorStyles.Left,
		Dock = DockStyle.Top
	};
	private Button exitButton = new Button {
		Text = "Avslutt",
		Anchor = AnchorStyles.Left,
		Dock = DockStyle.Top
	};
	private TableLayoutPanel table = new TableLayoutPanel {
		AutoSize = true, 
		ColumnCount = 3,
		RowCount = 3,
		Anchor = AnchorStyles.None,
	};

	public Oppgave1() {
		table.Controls.Add(fahrenheitLabel, 0, 0);
		table.Controls.Add(celsiusLabel, 2, 0);
		table.Controls.Add(fahrenheitBox, 0, 1);
		table.Controls.Add(celsiusBox, 2, 1);
		table.Controls.Add(clearButton, 0, 2);
		table.Controls.Add(calcButton, 1, 2);
		table.Controls.Add(exitButton, 2, 2);
		Size = new Size(WINDOW_WIDTH, WINDOW_HEIGHT);
		this.Controls.Add(table);

		calcButton.Click += new EventHandler (calcClick);
		clearButton.Click += new EventHandler (clearClick);
		exitButton.Click += new EventHandler (exitClick);
		CenterToScreen();
	}

	private void clearClick(object sender, EventArgs e) {
		fahrenheitBox.Text = "";
		celsiusBox.Text = "";
	}

	private void exitClick(object sender, EventArgs e) {
		Application.Exit();
	}

	private void calcClick(object sender, EventArgs e) {
		try {
			double val = fahrenheitToCelsius(Double.Parse(fahrenheitBox.Text));
			celsiusBox.Text = val.ToString("0.###");
		} catch (Exception ex) {
			Console.WriteLine(ex.Source);
			MessageBox.Show("Error: " + "\"" + ex.Message + "\". Please try again");
		}
	}


	private void clearData(object sender, EventArgs e) {
	}

	private double fahrenheitToCelsius(double val) {
		return (val - 32) * 5 / 9;
	}

	static public void Main() {
		Application.Run (new Oppgave1());
	}
}
