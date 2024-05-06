# Confy
An encypter/decrypter of my own and my friend. Pretty understandable code.

Example of usage:
text = "AGE=44";
key = 1234;
pacd = confypack(text, key);
print(pacd);

OR

pacd = "f!%!!52b[42l!1458b[f!%!!5[5lb4bb[[4[1bf!%!!55]15[212l1[b[f!%!!4]4l2[l]!5]]b8f!%!!421l]l8411bb]4f!%!!421l]l8411bb]4f";
key=1234;
text = confyunpack(pacd, key);
print(text);


THE CODE IS WRITTEN IN LUA5.3
