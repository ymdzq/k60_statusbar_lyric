.class synthetic Lcom/miui/maml/elements/TextScreenElement$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static final synthetic $SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/miui/maml/elements/ScreenElement$Align;->values()[Lcom/miui/maml/elements/ScreenElement$Align;

    .line 2
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    sput-object v0, Lcom/miui/maml/elements/TextScreenElement$4;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    .line 9
    :try_start_0
    sget-object v1, Lcom/miui/maml/elements/ScreenElement$Align;->LEFT:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/maml/elements/TextScreenElement$4;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    .line 20
    sget-object v1, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    :catch_1
    :try_start_2
    sget-object v0, Lcom/miui/maml/elements/TextScreenElement$4;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    .line 31
    sget-object v1, Lcom/miui/maml/elements/ScreenElement$Align;->RIGHT:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 35
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    :catch_2
    return-void
    .line 42
.end method
