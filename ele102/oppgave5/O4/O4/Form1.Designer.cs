namespace O4
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
            this.start_btn = new System.Windows.Forms.Button();
            this.stop_btn = new System.Windows.Forms.Button();
            this.clear_txt_btn = new System.Windows.Forms.Button();
            this.exit_btn = new System.Windows.Forms.Button();
            this.port_select_box = new System.Windows.Forms.ComboBox();
            this.last_rec_msg_box = new System.Windows.Forms.TextBox();
            this.last_ten_rec_msg_box = new System.Windows.Forms.RichTextBox();
            this.SuspendLayout();
            // 
            // start_btn
            // 
            this.start_btn.Location = new System.Drawing.Point(12, 36);
            this.start_btn.Name = "start_btn";
            this.start_btn.Size = new System.Drawing.Size(104, 44);
            this.start_btn.TabIndex = 0;
            this.start_btn.Text = "Start";
            this.start_btn.UseVisualStyleBackColor = true;
            this.start_btn.Click += new System.EventHandler(this.start_btn_click);
            // 
            // stop_btn
            // 
            this.stop_btn.Location = new System.Drawing.Point(436, 36);
            this.stop_btn.Name = "stop_btn";
            this.stop_btn.Size = new System.Drawing.Size(111, 44);
            this.stop_btn.TabIndex = 1;
            this.stop_btn.Text = "Stopp";
            this.stop_btn.UseVisualStyleBackColor = true;
            this.stop_btn.Click += new System.EventHandler(this.stop_btn_click);
            // 
            // clear_txt_btn
            // 
            this.clear_txt_btn.Location = new System.Drawing.Point(553, 36);
            this.clear_txt_btn.Name = "clear_txt_btn";
            this.clear_txt_btn.Size = new System.Drawing.Size(111, 44);
            this.clear_txt_btn.TabIndex = 2;
            this.clear_txt_btn.Text = "Fjern Text";
            this.clear_txt_btn.UseVisualStyleBackColor = true;
            this.clear_txt_btn.Click += new System.EventHandler(this.clear_txt_btn_click);
            // 
            // exit_btn
            // 
            this.exit_btn.Location = new System.Drawing.Point(670, 36);
            this.exit_btn.Name = "exit_btn";
            this.exit_btn.Size = new System.Drawing.Size(111, 44);
            this.exit_btn.TabIndex = 3;
            this.exit_btn.Text = "Avslutt";
            this.exit_btn.UseVisualStyleBackColor = true;
            this.exit_btn.Click += new System.EventHandler(this.exit_btn_click);
            // 
            // port_select_box
            // 
            this.port_select_box.FormattingEnabled = true;
            this.port_select_box.Location = new System.Drawing.Point(242, 48);
            this.port_select_box.Name = "port_select_box";
            this.port_select_box.Size = new System.Drawing.Size(121, 21);
            this.port_select_box.TabIndex = 4;
            // 
            // last_rec_msg_box
            // 
            this.last_rec_msg_box.Location = new System.Drawing.Point(12, 103);
            this.last_rec_msg_box.Name = "last_rec_msg_box";
            this.last_rec_msg_box.Size = new System.Drawing.Size(750, 20);
            this.last_rec_msg_box.TabIndex = 5;
            // 
            // last_ten_rec_msg_box
            // 
            this.last_ten_rec_msg_box.Location = new System.Drawing.Point(12, 148);
            this.last_ten_rec_msg_box.Name = "last_ten_rec_msg_box";
            this.last_ten_rec_msg_box.Size = new System.Drawing.Size(750, 244);
            this.last_ten_rec_msg_box.TabIndex = 6;
            this.last_ten_rec_msg_box.Text = "";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.last_ten_rec_msg_box);
            this.Controls.Add(this.last_rec_msg_box);
            this.Controls.Add(this.port_select_box);
            this.Controls.Add(this.exit_btn);
            this.Controls.Add(this.clear_txt_btn);
            this.Controls.Add(this.stop_btn);
            this.Controls.Add(this.start_btn);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button start_btn;
        private System.Windows.Forms.Button stop_btn;
        private System.Windows.Forms.Button clear_txt_btn;
        private System.Windows.Forms.Button exit_btn;
        private System.Windows.Forms.ComboBox port_select_box;
        private System.Windows.Forms.TextBox last_rec_msg_box;
        private System.Windows.Forms.RichTextBox last_ten_rec_msg_box;
    }
}

