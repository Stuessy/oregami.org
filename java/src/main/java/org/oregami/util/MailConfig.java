/*******************************************************************************
 * Copyright (C) 2012  Oregami.org, Germany http://www.oregami.org
 * 
 * 	This program is free software: you can redistribute it and/or modify
 * 	it under the terms of version 3 or any later version of the
 * 	GNU Affero General Public License as published by the Free Software 
 * 	Foundation.
 * 	
 * 	This program is distributed in the hope that it will be useful,
 * 	but WITHOUT ANY WARRANTY; without even the implied warranty of
 * 	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * 	GNU Affero General Public License for more details.	
 * 	
 * 	You should have received a copy of the GNU Affero General Public License
 * 	along with this program. If not, see <http://www.gnu.org/licenses/>.
 ******************************************************************************/
package org.oregami.util;

public abstract class MailConfig {

	//hier von einem gültigen Mail-Account die Zugangsdaten eingeben. Darüber werden dann E-Mails versendet.
	public static String smtpServer = "smtp.1und1.de";
	public static String mailAddress = "gamedb@supermariokart.de";
	public static String password = "";  //muss gefüllt werden!
	public static int port = 25;
	
}