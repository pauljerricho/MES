namespace RS232_EX1
{
    partial class Form1
    {
        /// <summary>
        /// 필수 디자이너 변수입니다.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 사용 중인 모든 리소스를 정리합니다.
        /// </summary>
        /// <param name="disposing">관리되는 리소스를 삭제해야 하면 true이고, 그렇지 않으면 false입니다.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form 디자이너에서 생성한 코드

        /// <summary>
        /// 디자이너 지원에 필요한 메서드입니다. 
        /// 이 메서드의 내용을 코드 편집기로 수정하지 마세요.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.CB_PORT = new System.Windows.Forms.ComboBox();
            this.BT_Open = new System.Windows.Forms.Button();
            this.BT_Close = new System.Windows.Forms.Button();
            this.BT_Read = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.TB_Sendframe = new System.Windows.Forms.TextBox();
            this.TB_Receivedframe = new System.Windows.Forms.TextBox();
            this.BT_P20 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("함초롬바탕 확장", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.label1.Location = new System.Drawing.Point(125, 87);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(90, 19);
            this.label1.TabIndex = 0;
            this.label1.Text = "Port Name";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("함초롬바탕 확장", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.label2.Location = new System.Drawing.Point(125, 239);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(84, 19);
            this.label2.TabIndex = 0;
            this.label2.Text = "송신 프레임";
            // 
            // CB_PORT
            // 
            this.CB_PORT.Font = new System.Drawing.Font("함초롬바탕 확장", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.CB_PORT.FormattingEnabled = true;
            this.CB_PORT.Location = new System.Drawing.Point(216, 84);
            this.CB_PORT.Name = "CB_PORT";
            this.CB_PORT.Size = new System.Drawing.Size(158, 27);
            this.CB_PORT.TabIndex = 1;
            this.CB_PORT.Click += new System.EventHandler(this.CB_Port_Click);
            // 
            // BT_Open
            // 
            this.BT_Open.Font = new System.Drawing.Font("함초롬바탕 확장", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.BT_Open.Location = new System.Drawing.Point(129, 126);
            this.BT_Open.Name = "BT_Open";
            this.BT_Open.Size = new System.Drawing.Size(100, 40);
            this.BT_Open.TabIndex = 2;
            this.BT_Open.Text = "OPEN";
            this.BT_Open.UseVisualStyleBackColor = true;
            this.BT_Open.Click += new System.EventHandler(this.BT_Open_Click);
            // 
            // BT_Close
            // 
            this.BT_Close.Font = new System.Drawing.Font("함초롬바탕 확장", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.BT_Close.Location = new System.Drawing.Point(274, 126);
            this.BT_Close.Name = "BT_Close";
            this.BT_Close.Size = new System.Drawing.Size(100, 40);
            this.BT_Close.TabIndex = 3;
            this.BT_Close.Text = "CLOSE";
            this.BT_Close.UseVisualStyleBackColor = true;
            this.BT_Close.Click += new System.EventHandler(this.BT_Close_Click);
            // 
            // BT_Read
            // 
            this.BT_Read.Font = new System.Drawing.Font("함초롬바탕 확장", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.BT_Read.Location = new System.Drawing.Point(129, 176);
            this.BT_Read.Name = "BT_Read";
            this.BT_Read.Size = new System.Drawing.Size(100, 40);
            this.BT_Read.TabIndex = 4;
            this.BT_Read.Text = "읽기";
            this.BT_Read.UseVisualStyleBackColor = true;
            this.BT_Read.Click += new System.EventHandler(this.BT_Read_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("함초롬바탕 확장", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.label3.Location = new System.Drawing.Point(125, 274);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(84, 19);
            this.label3.TabIndex = 5;
            this.label3.Text = "수신 프레임";
            // 
            // TB_Sendframe
            // 
            this.TB_Sendframe.Font = new System.Drawing.Font("함초롬바탕 확장", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.TB_Sendframe.Location = new System.Drawing.Point(216, 236);
            this.TB_Sendframe.Name = "TB_Sendframe";
            this.TB_Sendframe.Size = new System.Drawing.Size(158, 27);
            this.TB_Sendframe.TabIndex = 6;
            // 
            // TB_Receivedframe
            // 
            this.TB_Receivedframe.Font = new System.Drawing.Font("함초롬바탕 확장", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.TB_Receivedframe.Location = new System.Drawing.Point(216, 271);
            this.TB_Receivedframe.Name = "TB_Receivedframe";
            this.TB_Receivedframe.Size = new System.Drawing.Size(158, 27);
            this.TB_Receivedframe.TabIndex = 7;
            // 
            // BT_P20
            // 
            this.BT_P20.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.BT_P20.Font = new System.Drawing.Font("함초롬바탕 확장", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.BT_P20.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.BT_P20.Location = new System.Drawing.Point(216, 322);
            this.BT_P20.Name = "BT_P20";
            this.BT_P20.Size = new System.Drawing.Size(100, 40);
            this.BT_P20.TabIndex = 8;
            this.BT_P20.Text = "P20";
            this.BT_P20.UseVisualStyleBackColor = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(484, 461);
            this.Controls.Add(this.BT_P20);
            this.Controls.Add(this.TB_Receivedframe);
            this.Controls.Add(this.TB_Sendframe);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.BT_Read);
            this.Controls.Add(this.BT_Close);
            this.Controls.Add(this.BT_Open);
            this.Controls.Add(this.CB_PORT);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox CB_PORT;
        private System.Windows.Forms.Button BT_Open;
        private System.Windows.Forms.Button BT_Close;
        private System.Windows.Forms.Button BT_Read;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox TB_Sendframe;
        private System.Windows.Forms.TextBox TB_Receivedframe;
        private System.Windows.Forms.Button BT_P20;
    }
}

