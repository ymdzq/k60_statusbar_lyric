.class public final Lcom/android/systemui/util/settings/SecureSettingsImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/util/settings/SecureSettings;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStringForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getRealUserHandle(I)I

    .line 4
    move-result p0

    .line 7
    invoke-static {v0, p2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getUserTracker()Lcom/android/systemui/settings/UserTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    return-object p0
    .line 4
.end method

.method public final putStringForUser(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 5
    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getRealUserHandle(I)I

    move-result v5

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    .line 6
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method public final putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    invoke-interface {p0, p3}, Lcom/android/systemui/util/settings/SettingsProxy;->getRealUserHandle(I)I

    move-result p0

    .line 3
    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
