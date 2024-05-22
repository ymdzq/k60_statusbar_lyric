.class public abstract Lcom/miui/clock/utils/MiuiBlurUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static addMiBackgroundBlendColor(Landroid/view/View;II)V
    .locals 6

    .line 1
    const-class v0, Landroid/view/View;

    .line 2
    const-string v2, "addMiBackgroundBlendColor"

    .line 4
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 6
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    filled-new-array {v1, v1}, [Ljava/lang/Class;

    .line 10
    move-result-object v4

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p2

    .line 21
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 22
    move-result-object v5

    .line 25
    move-object v1, p0

    .line 26
    invoke-static/range {v0 .. v5}, Lcom/miui/clock/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
    .line 30
.end method

.method public static clearContainerPassBlur(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string v0, "clearContainerPassBlur result :"

    .line 2
    const-string v1, "MiuiBlurUtils"

    .line 4
    if-nez p0, :cond_0

    .line 6
    const-string p0, "clearContainerMiBackgroundBlur view is null"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-static {v2, p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMiBackgroundBlurMode(ILandroid/view/View;)V

    .line 15
    invoke-static {p0, v2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setPassWindowBlurEnabled(Landroid/view/View;Z)Z

    .line 18
    move-result v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v0, ", view: "

    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    const-string v3, "clearContainerMiBackgroundBlur error , view :"

    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :goto_0
    return-void
    .line 67
.end method

.method public static clearMemberBlendColor(Landroid/view/View;)V
    .locals 9

    .line 1
    const-string v0, "clearMemberBlendColor view :"

    .line 2
    const-string v1, "MiuiBlurUtils"

    .line 4
    if-nez p0, :cond_0

    .line 6
    const-string p0, "clearMemberBlendColor view is null"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-static {v2, p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMiViewBlurMode(ILandroid/view/View;)V

    .line 15
    const-class v3, Landroid/view/View;

    .line 18
    const-string/jumbo v5, "setMiBackgroundBlendColors"

    .line 20
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 23
    const-class v2, Ljava/util/ArrayList;

    .line 25
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 27
    move-result-object v7

    .line 30
    const/4 v8, 0x0

    .line 31
    move-object v4, p0

    .line 32
    invoke-static/range {v3 .. v8}, Lcom/miui/clock/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    const-string v3, "clearMemberBlendColor error , view :"

    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :goto_0
    return-void
    .line 73
.end method

.method public static clearMiBackgroundBlendColor(Landroid/view/View;)V
    .locals 6

    .line 1
    const-class v0, Landroid/view/View;

    .line 2
    const-string v2, "clearMiBackgroundBlendColor"

    .line 4
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 6
    const/4 v1, 0x0

    .line 8
    new-array v4, v1, [Ljava/lang/Class;

    .line 9
    new-array v5, v1, [Ljava/lang/Object;

    .line 11
    move-object v1, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/miui/clock/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
    .line 17
.end method

.method public static setContainerPassBlur(ILandroid/view/View;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "setContainerPassBlur result :"

    .line 2
    const-string v1, "MiuiBlurUtils"

    .line 5
    if-nez p1, :cond_0

    .line 7
    const-string/jumbo p0, "setPassBlur view is null"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/miui/clock/utils/DateFormatUtils;->isSystemUI(Landroid/content/Context;)Z

    .line 20
    move-result v2

    .line 23
    invoke-static {p1, v2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setPassWindowBlurEnabled(Landroid/view/View;Z)Z

    .line 24
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {v3, p1}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMiBackgroundBlurMode(ILandroid/view/View;)V

    .line 29
    const-class v4, Landroid/view/View;

    .line 32
    const-string/jumbo v6, "setMiBackgroundBlurRadius"

    .line 34
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 37
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 39
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 41
    move-result-object v8

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p0

    .line 48
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 49
    move-result-object v9

    .line 52
    move-object v5, p1

    .line 53
    invoke-static/range {v4 .. v9}, Lcom/miui/clock/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/miui/clock/utils/DateFormatUtils;->isSystemUI(Landroid/content/Context;)Z

    .line 61
    move-result p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    const-class v3, Landroid/view/View;

    .line 67
    const-string v5, "disableMiBackgroundContainBelow"

    .line 69
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 71
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 73
    filled-new-array {p0}, [Ljava/lang/Class;

    .line 75
    move-result-object v7

    .line 78
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 81
    move-result-object v8

    .line 84
    move-object v4, p1

    .line 85
    invoke-static/range {v3 .. v8}, Lcom/miui/clock/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, ",view : "

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 112
    :catch_0
    move-exception p0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v2, "setContainerPassBlur error , view :"

    .line 116
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 128
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    :goto_0
    return-void
    .line 135
.end method

.method public static setMemberBlendColor(ILandroid/view/View;Z)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setMemberBlendColor: view:"

    .line 2
    const-string v1, "MiuiBlurUtils"

    .line 5
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 13
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    goto/16 :goto_1

    .line 19
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMiBackgroundBlendColor(Landroid/view/View;)V

    .line 21
    const/4 v2, 0x3

    .line 24
    invoke-static {v2, p1}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMiViewBlurMode(ILandroid/view/View;)V

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 28
    move-result v2

    .line 31
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 32
    move-result v3

    .line 35
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 36
    move-result p0

    .line 39
    const/16 v4, 0xff

    .line 40
    invoke-static {v4, v2, v3, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 42
    move-result p0

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 47
    move-result v2

    .line 50
    const/16 v3, 0x65

    .line 51
    invoke-static {p1, p0, v3}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 53
    if-eqz p2, :cond_1

    .line 56
    const/16 v3, 0x69

    .line 58
    invoke-static {p1, v2, v3}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    const/16 v3, 0x67

    .line 64
    invoke-static {p1, v2, v3}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 66
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, ",colorDark:"

    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    const-string p2, ",color:"

    .line 85
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 93
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string p0, ",labColor:"

    .line 97
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 105
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 112
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_2

    .line 116
    :catch_0
    move-exception p0

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v0, "setMemberBlendColor error , view :"

    .line 120
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 132
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    goto :goto_2

    .line 139
    :cond_2
    :goto_1
    const-string/jumbo p0, "setMemberBlendColor view is null"

    .line 140
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_2
    return-void
    .line 146
.end method

.method public static setMemberBlendColors(IILandroid/view/View;Z)V
    .locals 6

    const/16 v3, 0xff

    const/4 v5, 0x1

    move-object v0, p2

    move v1, p3

    move v2, p0

    move v4, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(Landroid/view/View;ZIIIZ)V

    return-void
.end method

.method public static setMemberBlendColors(Landroid/view/View;ZIIIZ)V
    .locals 8

    const-string/jumbo v0, "setMemberBlendColor: view:"

    const-string v1, "MiuiBlurUtils"

    if-eqz p0, :cond_4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x3

    .line 3
    :try_start_0
    invoke-static {v2, p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMiViewBlurMode(ILandroid/view/View;)V

    .line 4
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p3, v2, v3, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    const/4 v2, 0x0

    .line 5
    invoke-static {p3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v4, Landroid/graphics/Point;

    const/16 v5, 0x65

    invoke-direct {v4, p2, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 8
    new-instance v4, Landroid/graphics/Point;

    const/16 v5, 0x69

    invoke-direct {v4, p3, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v4, Landroid/graphics/Point;

    const/16 v5, 0x67

    invoke-direct {v4, p3, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p5, :cond_3

    .line 10
    sget p5, Lcom/miui/clock/utils/DeviceConfig;->BACKGROUND_BLUR_VERSION:I

    const/4 v4, 0x2

    if-lt p5, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 11
    new-instance p5, Landroid/graphics/Point;

    const/16 v2, 0x3e8

    invoke-direct {p5, p4, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    const-class v2, Landroid/view/View;

    const-string/jumbo v4, "setMiBackgroundBlendColors"

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class p4, Ljava/util/ArrayList;

    filled-new-array {p4}, [Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/clock/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, ",colorDark:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",color:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",labColor:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "setMemberBlendColor error , view :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string/jumbo p0, "setMemberBlendColor view is null"

    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setMiBackgroundBlurMode(ILandroid/view/View;)V
    .locals 6

    .line 1
    const-class v0, Landroid/view/View;

    .line 2
    const-string/jumbo v2, "setMiBackgroundBlurMode"

    .line 4
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 7
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 9
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 11
    move-result-object v4

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p0

    .line 18
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 19
    move-result-object v5

    .line 22
    move-object v1, p1

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/miui/clock/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
    .line 27
.end method

.method public static setMiViewBlurMode(ILandroid/view/View;)V
    .locals 6

    .line 1
    const-class v0, Landroid/view/View;

    .line 2
    const-string/jumbo v2, "setMiViewBlurMode"

    .line 4
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 7
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 9
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 11
    move-result-object v4

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p0

    .line 18
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 19
    move-result-object v5

    .line 22
    move-object v1, p1

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/miui/clock/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
    .line 27
.end method

.method public static setPassWindowBlurEnabled(Landroid/view/View;Z)Z
    .locals 5

    .line 1
    const-class v0, Landroid/view/View;

    .line 2
    const-string/jumbo v1, "setPassWindowBlurEnabled"

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 11
    move-result-object v4

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    :try_start_0
    invoke-static {v2, v4}, Lcom/miui/clock/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 26
    invoke-static {v0, v1, v2, v4}, Lcom/miui/clock/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string p1, "ReflectUtils"

    .line 39
    const-string v0, "invokeObject"

    .line 41
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_0
    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    .line 46
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    move-result p0

    .line 51
    return p0
    .line 52
.end method
