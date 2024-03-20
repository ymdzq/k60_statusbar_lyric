.class public abstract Lcom/miui/lockscreeninfo/c;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final b:Ljava/util/List;

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "corot"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 11
    sput-object v0, Lcom/miui/lockscreeninfo/c;->b:Ljava/util/List;

    .line 12
    const-string v0, "ro.build.characteristics"

    .line 14
    const-string v1, "default"

    .line 16
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    const-string/jumbo v1, "tablet"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    sput-boolean v0, Lcom/miui/lockscreeninfo/c;->c:Z

    .line 29
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 31
    const/4 v1, 0x0

    .line 33
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 34
    move-result v0

    .line 37
    const/4 v2, 0x2

    .line 38
    if-ne v0, v2, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v0, v1

    .line 43
    :goto_0
    sput-boolean v0, Lcom/miui/lockscreeninfo/c;->d:Z

    .line 44
    const-string v0, "persist.sys.background_blur_supported"

    .line 46
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 48
    move-result v0

    .line 51
    sput-boolean v0, Lcom/miui/lockscreeninfo/c;->e:Z

    .line 52
    const-string v0, "persist.sys.background_blur_keyguard_disabled"

    .line 54
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 56
    move-result v0

    .line 59
    sput-boolean v0, Lcom/miui/lockscreeninfo/c;->f:Z

    .line 60
    const-string v0, "persist.sys.background_blur_version"

    .line 62
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 64
    move-result v0

    .line 67
    sput v0, Lcom/miui/lockscreeninfo/c;->g:I

    .line 68
    return-void
    .line 70
.end method

.method public static a(Landroid/content/Context;)F
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v0, v0

    .line 1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cetus"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-static {p0}, Lcom/miui/lockscreeninfo/c;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/high16 p0, 0x43a00000    # 320.0f

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p0}, Lcom/miui/lockscreeninfo/c;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 p0, 0x44290000    # 676.0f

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/miui/lockscreeninfo/c;->d:Z

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/miui/lockscreeninfo/c;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x442e0000    # 696.0f

    goto :goto_0

    :cond_2
    sget-boolean p0, Lcom/miui/lockscreeninfo/c;->c:Z

    if-eqz p0, :cond_3

    const p0, 0x4431c000    # 711.0f

    goto :goto_0

    :cond_3
    const/high16 p0, 0x43c40000    # 392.0f

    :goto_0
    div-float/2addr v0, p0

    return v0
.end method

.method public static a(Lcom/miui/lockscreeninfo/BaseTextView;)V
    .locals 9

    const-string v0, "clearContainerPassBlur result :"

    const-string v1, "com.miui.lockscreeninfo.c"

    if-nez p0, :cond_0

    const-string p0, "clearContainerMiBackgroundBlur view is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    :try_start_0
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    const-class v2, Landroid/view/View;

    const-string/jumbo v4, "setMiBackgroundBlurMode"

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/lockscreeninfo/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0, v8}, Lcom/miui/lockscreeninfo/d/f;->b(Lcom/miui/lockscreeninfo/BaseTextView;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", view: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearContainerMiBackgroundBlur error , view :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 5

    const-string v0, "persist.sys.miui_resolution"

    .line 7
    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    const-string v4, "1440"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v0, v0, v2

    const-string v1, "3200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    .line 8
    sget-boolean v0, Lcom/miui/lockscreeninfo/c;->f:Z

    if-eqz v0, :cond_2

    return v3

    :cond_2
    sget-object v0, Lcom/miui/lockscreeninfo/c;->b:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    sget v0, Lcom/miui/lockscreeninfo/c;->g:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    if-nez v0, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method public static a(I)Z
    .locals 1

    .line 10
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Lcom/miui/lockscreeninfo/BaseTextView;)V
    .locals 14

    .line 1
    const-string v0, "clearMemberBlendColor view :"

    .line 2
    const-string v1, "com.miui.lockscreeninfo.c"

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
    :try_start_0
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 14
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 16
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 18
    move-result-object v6

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 26
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 27
    move-result-object v7

    .line 30
    const-class v2, Landroid/view/View;

    .line 31
    const-string/jumbo v4, "setMiViewBlurMode"

    .line 33
    move-object v3, p0

    .line 36
    invoke-static/range {v2 .. v7}, Lcom/miui/lockscreeninfo/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 40
    const-class v2, Ljava/util/ArrayList;

    .line 42
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 44
    move-result-object v12

    .line 47
    const/4 v2, 0x0

    .line 48
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 49
    move-result-object v13

    .line 52
    const-class v8, Landroid/view/View;

    .line 53
    const-string/jumbo v10, "setMiBackgroundBlendColors"

    .line 55
    move-object v9, p0

    .line 58
    invoke-static/range {v8 .. v13}, Lcom/miui/lockscreeninfo/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    const-string v3, "clearMemberBlendColor error , view :"

    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    :goto_0
    return-void
    .line 99
.end method

.method public static c(I)Z
    .locals 1

    .line 1
    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[\\uD83C-\\uDBFF\\uDC00-\\uDFFF]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
