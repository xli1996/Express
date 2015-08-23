package Mail;

public class Test {

	/**
	 * @param args
	 */
		public static void main(String[] args) {
			String smtp = "smtp.163.com";// smtp服务器
			String from = "163163.happy@163.com";// 邮件显示名称
			String to = "lixiangwd@outlook.com";// 收件人的邮件地址，必须是真实地址
			String copyto = "";// 抄送人邮件地址
			String subject = "测试邮件";// 邮件标题
			String content = "你好！";// 邮件内容
			String username = "163163.happy";// 发件人真实的账户名
			String password = "1324657980";// 发件人密码
			Mail.sendAndCc(smtp, from, to, copyto, subject, content, username, password);
		}

	}


