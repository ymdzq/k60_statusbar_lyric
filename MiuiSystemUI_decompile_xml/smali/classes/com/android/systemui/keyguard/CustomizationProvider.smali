.class public final Lcom/android/systemui/keyguard/CustomizationProvider;
.super Landroid/content/ContentProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;


# instance fields
.field public contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

.field public final uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Landroid/content/UriMatcher;

    .line 5
    const/4 v1, -0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 8
    const-string/jumbo v1, "slots"

    .line 11
    invoke-static {v1}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;->qualifiedTablePath(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    const-string v2, "com.android.systemui.customization"

    .line 18
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    const-string v1, "affordances"

    .line 24
    invoke-static {v1}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;->qualifiedTablePath(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    const-string/jumbo v1, "selections"

    .line 34
    invoke-static {v1}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;->qualifiedTablePath(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 40
    const/4 v3, 0x3

    .line 41
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    const-string v1, "flags"

    .line 45
    const/4 v3, 0x4

    .line 47
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    iput-object v0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 51
    return-void
    .line 53
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-interface {v0, p1}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    .line 9
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 12
    return-void

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    const-string p1, "Required value was null."

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0
    .line 27
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eq v0, v4, :cond_0

    .line 13
    if-eq v0, v3, :cond_0

    .line 15
    if-eq v0, v2, :cond_0

    .line 17
    if-eq v0, v1, :cond_0

    .line 19
    move-object v0, v5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd."

    .line 23
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 28
    move-result p0

    .line 31
    if-eq p0, v4, :cond_4

    .line 32
    if-eq p0, v3, :cond_3

    .line 34
    if-eq p0, v2, :cond_2

    .line 36
    if-eq p0, v1, :cond_1

    .line 38
    move-object p0, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "flags"

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    const-string/jumbo p0, "selections"

    .line 45
    invoke-static {p0}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;->qualifiedTablePath(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const-string p0, "affordances"

    .line 53
    invoke-static {p0}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;->qualifiedTablePath(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    const-string/jumbo p0, "slots"

    .line 60
    invoke-static {p0}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;->qualifiedTablePath(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    :goto_1
    if-eqz v0, :cond_6

    .line 67
    if-nez p0, :cond_5

    .line 69
    goto :goto_2

    .line 71
    :cond_5
    const-string p1, "com.android.systemui.customization."

    .line 72
    invoke-static {v0, p1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_6
    :goto_2
    return-object v5
    .line 79
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final onCreate()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    .line 2
    return-void
    .line 4
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const-string p0, "KeyguardQuickAffordanceProvider"

    .line 2
    const-string p1, "Update is not supported!"

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    const/4 p0, 0x0

    .line 9
    return p0
    .line 10
.end method
