englishCapitalAlphabet = 'ABCDEFGHIGKLMNOPQRSTUVWXYZ'
class VigenereAlgorithm:
    def __init__(self, key, alphabet = englishCapitalAlphabet, useEnlarged = False):
        if not useEnlarged:
            self.alphabet = list(alphabet)
        else:
            self.alphabet = list(alphabet + '.,/;-=+)(*&^%$#@! ')
        self.n_alphabet = len(self.alphabet)
        self.key = key
    def enlarge_key(self, message):
        if len(message) == len(self.key): return self.key
        else: return self.key*(len(message)//len(self.key)) + self.key[:len(message)%len(self.key)]

    def encript(self, message):
        temp_key = list(self.enlarge_key(message))
        return ''.join([self.alphabet[(self.alphabet.index(symbol_m)+temp_key.index(symbol_k)) % self.n_alphabet] for symbol_m, symbol_k in zip(message, temp_key)])

    def decript(self, encripted_message):
        temp_key = list(self.enlarge_key(encripted_message))
        return ''.join([self.alphabet[self.alphabet.index(symbol_m) - temp_key.index(symbol_k)] for symbol_m, symbol_k in zip(encripted_message, temp_key)])
