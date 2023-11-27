=begin
Implementá un método que reciba un número variable de parámetros y un bloque, y que al ser
invocado ejecute el bloque recibido pasándole todos los parámetros que se recibieron encap‑
sulando todo esto con captura de excepciones de manera tal que si en la ejecución del bloque
se produce alguna excepción, proceda de la siguiente forma:
• Si la excepción es de clase RuntimeError, debe imprimir en pantalla "Hay algo mal
que no anda bien", y retornar :rt.
• Si la excepción es de clase NoMethodError, debe imprimir "Y este método?" más el
mensaje original de la excepción que se produjo, y retornar :nm.
• Si se produce cualquier otra excepción, debe imprimir en pantalla "Y ahora?", y relanzar
la excepción que se produjo.
En caso que la ejecución del bloque sea exitosa, deberá retornar :ok.
Tip: Leer sobre las sentencias raise y rescue.
=end