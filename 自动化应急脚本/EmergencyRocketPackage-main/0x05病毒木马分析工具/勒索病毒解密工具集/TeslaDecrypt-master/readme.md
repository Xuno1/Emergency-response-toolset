<h2>Talos Universal TeslaDecrypter</h2>
<h5>Version 1.0</h5>
An application able to decrypt all the files encrypted by all version of TeslaCrypt and AlphaCrypt:
<ul>
   <li>TeslaCrypt 0.x - Encrypts files using an AES-256 CBC algorithm</li>
   <li>AlphaCrypt 0.x - Encrypts files using AES-256 and encrypts the key with EC</li>
   <li>TeslaCrypt 2.x - Same as before, but uses EC to create a weak Recovery key. The application is able to use factorization to recover the victim's global private key.</li>
   <li>TeslaCrypt 3 & 4 - The last ultimate versions. We are able to decrypt their files because we have sink-holed the C&C server EC private key.
</ul>
<br>
<h5>Compiling</h5>
To proper compile the code you should have OpenSsl installed in a particular root directory (like "C:\OpenSsl"), and an environment variable named "openssldir" that points to it.<br>
You can find an handy pre-compiled OpenSsl package here:<br>
<a href="http://www.npcglib.org/~stathis/blog/precompiled-openssl/">www.npcglib.org/~stathis/blog/precompiled-openssl/</a><br>
The code has been tested with 2 environments: Visual Studio 2008 and Visual Studio 2015.<br>
To proper allow the factorization to run, you should add 2 Msieve files inside the compiled application path:
<ul>
  <li>msieve152.exe</li>
  <li>pthreadGC2.dll</li>
</ul>
Those files have been already included in this repository. You can find a copy of Msieve here:<br>
<a href="https://sourceforge.net/projects/msieve/">https://sourceforge.net/projects/msieve/</a><br>
<br>
<h5>Improvements</h5>
This application contains a lot of improvements and modifications in respect to TeslaDecrypter 0.2. Here is a complete list:
<ul>
  <li>Re-designed the decryption algorithm (now it properly deals with big files and uses less memory)</li>
  <li>Added support for the Factorization algorithm (TeslaCrypt 2.x) able to reconstruct the victim's private key (Yes, written in plain C++ :-) and 50 times faster than its Python counterpart)</li>
  <li>An algorithm able to manage and launch Msieve, and parse its log file</li>
  <li>Added support for TeslaCrypt 3.x and 4.x</li>
  <li>Added key verification algorithms (TeslaCrypt 2.x/3/4) - In this way the Decryptor <u>can't produce</u> invalid files</li>
  <li>A powerful command line arguments</li>
  <li>Imported leaked TeslaCrypt 3.x/4 C&C private key </li>
</ul>
<br>
<br>
Last revision: 05/31/2016
