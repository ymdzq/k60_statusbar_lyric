.class public abstract Lcom/google/gson/internal/reflect/ReflectionHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;

    .line 2
    invoke-direct {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 7
    :catch_0
    new-instance v0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;

    .line 8
    invoke-direct {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;-><init>()V

    .line 10
    :goto_0
    sput-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    .line 13
    return-void
    .line 15
.end method

.method public static appendExecutableParameters(Ljava/lang/reflect/AccessibleObject;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    const/16 v0, 0x28

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    instance-of v0, p0, Ljava/lang/reflect/Method;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    check-cast p0, Ljava/lang/reflect/Method;

    .line 11
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 13
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 18
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 20
    move-result-object p0

    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 24
    :goto_1
    array-length v1, p0

    .line 25
    if-ge v0, v1, :cond_2

    .line 26
    if-lez v0, :cond_1

    .line 28
    const-string v1, ", "

    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_1
    aget-object v1, p0, v0

    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_1

    .line 46
    :cond_2
    const/16 p0, 0x29

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    return-void
    .line 52
.end method

.method public static constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {p0, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->appendExecutableParameters(Ljava/lang/reflect/AccessibleObject;Ljava/lang/StringBuilder;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method

.method public static getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/Field;

    .line 2
    const-string v1, "#"

    .line 4
    const-string v2, "\'"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    check-cast p0, Ljava/lang/reflect/Field;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v3, "field \'"

    .line 14
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 19
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Method;

    .line 48
    if-eqz v0, :cond_1

    .line 50
    check-cast p0, Ljava/lang/reflect/Method;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 59
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {p0, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->appendExecutableParameters(Ljava/lang/reflect/AccessibleObject;Ljava/lang/StringBuilder;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    const-string v4, "method \'"

    .line 72
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    .line 102
    if-eqz v0, :cond_2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "constructor \'"

    .line 108
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 113
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "<unknown AccessibleObject> "

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object p0

    .line 147
    :goto_0
    if-eqz p1, :cond_3

    .line 148
    const/4 p1, 0x0

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 151
    move-result v0

    .line 154
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 155
    move-result v0

    .line 158
    if-eqz v0, :cond_3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 166
    move-result p1

    .line 169
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 170
    move-result p1

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    const/4 p1, 0x1

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 178
    move-result-object p0

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p0

    .line 188
    :cond_3
    return-object p0
    .line 189
.end method

.method public static makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    return-void

    .line 6
    :catch_0
    move-exception v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    new-instance v1, Lcom/google/gson/JsonIOException;

    .line 13
    const-string v2, "Failed making "

    .line 15
    const-string v3, " accessible; either increase its visibility or write a custom TypeAdapter for its declaring type."

    .line 17
    invoke-static {v2, p0, v3}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    invoke-direct {v1, p0, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    throw v1
    .line 26
.end method
