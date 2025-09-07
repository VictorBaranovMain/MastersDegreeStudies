class CeaserEncriptionAlgorithm():
    def __init__(self, alphabet:str, shift:int, useEnlargedAlphabet = False):
        if alphabet =='': 
            raise ValueError('Empty alphabet')
        self.alphabet = alphabet
        #защита от дурака
        self.shift = shift % len(alphabet)
        if useEnlargedAlphabet:
            self.alphabet += '.-,!/?#@$%^&*()~ '
        self.encripted_alphabet = self.create_alphabet()
        self.encription_rule = self.create_encription_rule()
        self.decription_rule = self.create_decription_rule()

    def create_alphabet(self):
        return self.alphabet[self.shift:] + self.alphabet[:self.shift]
    def create_encription_rule(self):
        return {old:new for old,new in zip(self.alphabet, self.encripted_alphabet)}
    def create_decription_rule(self):
        return {new:old for old,new in zip(self.alphabet, self.encripted_alphabet)}
    
    def _check_alphabet_state(self,message):
        return set(message) <= set(self.alphabet)
    def _check_encripted_alphabet_state(self,message):
        return set(message) <= set(self.encripted_alphabet)

    def encript_message(self, message):
        if self._check_alphabet_state(message):
            encripted_message = ''
            for symbol in message:
                encripted_message += self.encription_rule[symbol]
            return encripted_message
        else: raise ValueError('You are using invalid alphabet')

    def decript_message(self, message):
        if self._check_encripted_alphabet_state(message):
            decripted_message = ''
            for symbol in message:
                decripted_message += self.decription_rule[symbol]
            return decripted_message
        else: raise ValueError('You are using invalid encripted alphabet')

    