.class public abstract Lcom/android/systemui/qs/SettingObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDefaultValue:I

.field public mListening:Z

.field public mObservedValue:I

.field public final mSettingName:Ljava/lang/String;

.field public final mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

.field public mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingName:Ljava/lang/String;

    .line 5
    iput p5, p0, Lcom/android/systemui/qs/SettingObserver;->mDefaultValue:I

    iput p5, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    .line 6
    iput p4, p0, Lcom/android/systemui/qs/SettingObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public final getValue()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/SettingObserver;->mListening:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingName:Ljava/lang/String;

    .line 11
    iget v2, p0, Lcom/android/systemui/qs/SettingObserver;->mDefaultValue:I

    .line 13
    iget p0, p0, Lcom/android/systemui/qs/SettingObserver;->mUserId:I

    .line 15
    invoke-interface {v0, v2, p0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 17
    move-result p0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public abstract handleValueChanged(IZ)V
.end method

.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingName:Ljava/lang/String;

    .line 4
    iget v1, p0, Lcom/android/systemui/qs/SettingObserver;->mDefaultValue:I

    .line 6
    iget v2, p0, Lcom/android/systemui/qs/SettingObserver;->mUserId:I

    .line 8
    invoke-interface {p1, v1, v2, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 10
    move-result p1

    .line 13
    iget v0, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    .line 14
    if-eq p1, v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/SettingObserver;->handleValueChanged(IZ)V

    .line 23
    return-void
    .line 26
.end method

.method public final setListening(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/SettingObserver;->mListening:Z

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SettingObserver;->mListening:Z

    .line 7
    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingName:Ljava/lang/String;

    .line 13
    iget v1, p0, Lcom/android/systemui/qs/SettingObserver;->mDefaultValue:I

    .line 15
    iget v2, p0, Lcom/android/systemui/qs/SettingObserver;->mUserId:I

    .line 17
    invoke-interface {p1, v1, v2, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 19
    move-result p1

    .line 22
    iput p1, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    .line 23
    iget-object p1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingName:Ljava/lang/String;

    .line 27
    invoke-interface {p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    iget v2, p0, Lcom/android/systemui/qs/SettingObserver;->mUserId:I

    .line 34
    invoke-interface {p1, v0, v1, p0, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    .line 40
    invoke-interface {p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 42
    iget p1, p0, Lcom/android/systemui/qs/SettingObserver;->mDefaultValue:I

    .line 45
    iput p1, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    .line 47
    :goto_0
    return-void
    .line 49
.end method

.method public final setUserId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/SettingObserver;->mUserId:I

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/qs/SettingObserver;->mListening:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 9
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
