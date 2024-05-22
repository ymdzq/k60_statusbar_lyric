.class public Lcom/android/systemui/tuner/TunerSwitch;
.super Landroidx/preference/SwitchPreference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final mAction:I

.field public final mDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, Lcom/android/systemui/R$styleable;->TunerSwitch:[I

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 7
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 12
    move-result p2

    .line 15
    iput-boolean p2, p0, Lcom/android/systemui/tuner/TunerSwitch;->mDefault:Z

    .line 16
    const/4 p2, 0x1

    .line 18
    const/4 v0, -0x1

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 20
    move-result p2

    .line 23
    iput p2, p0, Lcom/android/systemui/tuner/TunerSwitch;->mAction:I

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    return-void
    .line 29
.end method


# virtual methods
.method public final onAttached()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 2
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 11
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 13
    const-string v2, ","

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public final onClick()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    .line 2
    iget v0, p0, Lcom/android/systemui/tuner/TunerSwitch;->mAction:I

    .line 5
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 12
    move-result p0

    .line 15
    invoke-static {v1, v0, p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final onDetached()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 10
    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 13
    return-void
    .line 16
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/tuner/TunerSwitch;->mDefault:Z

    .line 2
    invoke-static {p2, p1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    .line 4
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 8
    return-void
    .line 11
.end method

.method public final persistBoolean(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 2
    const-string v1, ","

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    aget-object v3, v0, v2

    .line 14
    iget-object v4, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    move-result-object v4

    .line 21
    if-eqz p1, :cond_0

    .line 22
    const-string v5, "1"

    .line 24
    goto :goto_1

    .line 26
    :cond_0
    const-string v5, "0"

    .line 27
    :goto_1
    invoke-static {v4, v3, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    return-void
    .line 35
.end method
