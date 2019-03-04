namespace Oppgave3
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label a_label;
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.result_label = new System.Windows.Forms.Label();
            this.c_label = new System.Windows.Forms.Label();
            this.b_label = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.calc_button = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            a_label = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // a_label
            // 
            a_label.AutoSize = true;
            a_label.Location = new System.Drawing.Point(49, 174);
            a_label.Name = "a_label";
            a_label.Size = new System.Drawing.Size(22, 13);
            a_label.TabIndex = 8;
            a_label.Text = "a =";
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(402, 167);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(100, 20);
            this.textBox3.TabIndex = 0;
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(61, 4);
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(230, 167);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(100, 20);
            this.textBox2.TabIndex = 2;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(77, 167);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(247, 223);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Løsning(er)";
            // 
            // result_label
            // 
            this.result_label.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.result_label.AutoSize = true;
            this.result_label.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.result_label.Location = new System.Drawing.Point(230, 271);
            this.result_label.Name = "result_label";
            this.result_label.Size = new System.Drawing.Size(2, 15);
            this.result_label.TabIndex = 5;
            this.result_label.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // c_label
            // 
            this.c_label.AutoSize = true;
            this.c_label.Location = new System.Drawing.Point(374, 174);
            this.c_label.Name = "c_label";
            this.c_label.Size = new System.Drawing.Size(22, 13);
            this.c_label.TabIndex = 6;
            this.c_label.Text = "c =";
            // 
            // b_label
            // 
            this.b_label.AutoSize = true;
            this.b_label.Location = new System.Drawing.Point(202, 174);
            this.b_label.Name = "b_label";
            this.b_label.Size = new System.Drawing.Size(22, 13);
            this.b_label.TabIndex = 7;
            this.b_label.Text = "b =";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(402, 313);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(100, 23);
            this.button1.TabIndex = 9;
            this.button1.Text = "Avslutt";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // calc_button
            // 
            this.calc_button.Location = new System.Drawing.Point(77, 313);
            this.calc_button.Name = "calc_button";
            this.calc_button.Size = new System.Drawing.Size(100, 23);
            this.calc_button.TabIndex = 10;
            this.calc_button.Text = "Regn Ut";
            this.calc_button.UseVisualStyleBackColor = true;
            this.calc_button.Click += new System.EventHandler(this.solveEquationOnClick);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(227, 63);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(106, 13);
            this.label6.TabIndex = 11;
            this.label6.Text = " a * x^2 + b*x + c = 0";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(561, 368);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.calc_button);
            this.Controls.Add(this.button1);
            this.Controls.Add(a_label);
            this.Controls.Add(this.b_label);
            this.Controls.Add(this.c_label);
            this.Controls.Add(this.result_label);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox3);
            this.Name = "Form1";
            this.Text = "Ligningskalkulator";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label result_label;
        private System.Windows.Forms.Label c_label;
        private System.Windows.Forms.Label b_label;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button calc_button;
        private System.Windows.Forms.Label label6;
    }
}

