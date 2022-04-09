namespace Trafficlight
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
            this.LampRed = new System.Windows.Forms.Button();
            this.LampYellow = new System.Windows.Forms.Button();
            this.LampGreen = new System.Windows.Forms.Button();
            this.Exit = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // LampRed
            // 
            this.LampRed.Font = new System.Drawing.Font("한컴산뜻돋움", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.LampRed.Location = new System.Drawing.Point(120, 56);
            this.LampRed.Name = "LampRed";
            this.LampRed.Size = new System.Drawing.Size(130, 40);
            this.LampRed.TabIndex = 0;
            this.LampRed.Text = "LampRed";
            this.LampRed.UseVisualStyleBackColor = true;
            // 
            // LampYellow
            // 
            this.LampYellow.Font = new System.Drawing.Font("한컴산뜻돋움", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.LampYellow.Location = new System.Drawing.Point(120, 122);
            this.LampYellow.Name = "LampYellow";
            this.LampYellow.Size = new System.Drawing.Size(130, 40);
            this.LampYellow.TabIndex = 1;
            this.LampYellow.Text = "LampYellow";
            this.LampYellow.UseVisualStyleBackColor = true;
            // 
            // LampGreen
            // 
            this.LampGreen.Font = new System.Drawing.Font("한컴산뜻돋움", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.LampGreen.Location = new System.Drawing.Point(120, 188);
            this.LampGreen.Name = "LampGreen";
            this.LampGreen.Size = new System.Drawing.Size(130, 40);
            this.LampGreen.TabIndex = 2;
            this.LampGreen.Text = "LampGreen";
            this.LampGreen.UseVisualStyleBackColor = true;
            // 
            // Exit
            // 
            this.Exit.Font = new System.Drawing.Font("한컴 말랑말랑 Regular", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.Exit.Location = new System.Drawing.Point(120, 259);
            this.Exit.Name = "Exit";
            this.Exit.Size = new System.Drawing.Size(130, 40);
            this.Exit.TabIndex = 3;
            this.Exit.Text = "프로그램 종료";
            this.Exit.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.ClientSize = new System.Drawing.Size(384, 361);
            this.Controls.Add(this.Exit);
            this.Controls.Add(this.LampGreen);
            this.Controls.Add(this.LampYellow);
            this.Controls.Add(this.LampRed);
            this.Name = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button LampRed;
        private System.Windows.Forms.Button LampYellow;
        private System.Windows.Forms.Button LampGreen;
        private System.Windows.Forms.Button Exit;
    }
}

