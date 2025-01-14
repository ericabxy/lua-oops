# Parent Methods

While not strictly necessary, if a subclass overrides a method from its parent its desirable to be able to access those methods.

Super calls parent method.

    myclass.super('alpha', self, a, b, c)

Super returns object to call methods on.

    myclass.super().alpha(self, a, b, c)
