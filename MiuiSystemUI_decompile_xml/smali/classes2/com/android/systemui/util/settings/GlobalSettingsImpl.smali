.class public final Lcom/android/systemui/util/settings/GlobalSettingsImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/util/settings/GlobalSettings;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStringForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getRealUserHandle(I)I

    .line 4
    move-result p0

    .line 7
    invoke-static {v0, p2, p0}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getUserTracker()Lcom/android/systemui/settings/UserTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    return-object p0
    .line 4
.end method

.method public final putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    invoke-interface {p0, p3}, Lcom/android/systemui/util/settings/SettingsProxy;->getRealUserHandle(I)I

    .line 4
    move-result p0

    .line 7
    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
