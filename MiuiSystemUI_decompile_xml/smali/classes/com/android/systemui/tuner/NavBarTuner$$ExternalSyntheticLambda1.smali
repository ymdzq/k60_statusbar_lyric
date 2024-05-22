.class public final synthetic Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    .line 2
    check-cast p2, Ljava/lang/String;

    .line 4
    const-string p0, "default"

    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p2, 0x0

    .line 14
    :cond_0
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    .line 15
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    .line 21
    const-string/jumbo p1, "sysui_nav_bar"

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 p0, 0x1

    .line 29
    return p0
    .line 30
.end method
