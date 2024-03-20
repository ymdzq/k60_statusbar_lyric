.class public Lmiuix/preference/TextPreference;
.super Landroidx/preference/Preference;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    const v0, 0x7f04082d    # @attr/textPreferenceStyle

    .line 2
    const v1, 0x7f140228    # @style/Miuix.Preference.TextPreference

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    sget-object v2, Lmiuix/preference/R$styleable;->TextPreference:[I

    .line 11
    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 13
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 18
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 26
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result p2

    .line 33
    if-nez p2, :cond_0

    .line 34
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 39
    iget-object v1, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    .line 40
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 42
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    iput-object p2, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 50
    :cond_0
    const-string p2, "Could not instantiate the TextProvider: "

    .line 53
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 61
    move-result-object p1

    .line 64
    invoke-virtual {p1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 65
    move-result-object p1

    .line 68
    const-class v1, Lmiuix/preference/TextPreference$TextProvider;

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 71
    move-result-object p1

    .line 74
    new-array v1, v0, [Ljava/lang/Class;

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 77
    move-result-object p1

    .line 80
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 89
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 93
    :catch_0
    move-exception p0

    .line 94
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 95
    invoke-static {p2, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 100
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    throw p1

    .line 104
    :catch_1
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 106
    invoke-static {p2, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p2

    .line 111
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    throw p1

    .line 115
    :catch_2
    move-exception p0

    .line 116
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 117
    const-string p2, "Can\'t access non-public constructor "

    .line 119
    invoke-static {p2, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 124
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    throw p1

    .line 128
    :catch_3
    move-exception p0

    .line 129
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    const-string p2, "Error creating TextProvider "

    .line 132
    invoke-static {p2, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object p2

    .line 137
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    throw p1

    .line 141
    :catch_4
    move-exception p0

    .line 142
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 143
    const-string p2, "Can\'t find provider: "

    .line 145
    invoke-static {p2, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object p2

    .line 150
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    throw p1

    .line 154
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 155
    return-void
    .line 158
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    const v0, 0x7f0a0978    # @id/text_right

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    if-eqz p1, :cond_1

    .line 16
    iget-object p0, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    const/4 p0, 0x0

    .line 29
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    const/16 p0, 0x8

    .line 34
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :cond_1
    :goto_0
    return-void
    .line 39
.end method
