.class public Lcom/android/settings/DeferredSetupHelper;
.super Ljava/lang/Object;
.source "DeferredSetupHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceIntent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$LjeNpD7NJubGqEmupWW9AGIu7kU(Lcom/android/settings/DeferredSetupHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/DeferredSetupHelper;->lambda$showSuggestionIfNeed$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRemoteService(Lcom/android/settings/DeferredSetupHelper;Landroid/service/settings/suggestions/ISuggestionService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/DeferredSetupHelper;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSuggestionIfNeed(Lcom/android/settings/DeferredSetupHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/DeferredSetupHelper;->showSuggestionIfNeed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/DeferredSetupHelper;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider()Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSuggestionServiceComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DeferredSetupHelper;->mServiceIntent:Landroid/content/Intent;

    .line 36
    invoke-direct {p0}, Lcom/android/settings/DeferredSetupHelper;->createServiceConnection()Landroid/content/ServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DeferredSetupHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 37
    iput-object p2, p0, Lcom/android/settings/DeferredSetupHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private createServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 112
    new-instance v0, Lcom/android/settings/DeferredSetupHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DeferredSetupHelper$1;-><init>(Lcom/android/settings/DeferredSetupHelper;)V

    return-object v0
.end method

.method private isReady()Z
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/settings/DeferredSetupHelper;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showSuggestionIfNeed$0()V
    .locals 15

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/DeferredSetupHelper;->getSuggestions()Ljava/util/List;

    move-result-object v2

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showSuggestionIfNeed: startTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " endTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DeferredSetupHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v5, p0, Lcom/android/settings/DeferredSetupHelper;->mContext:Landroid/content/Context;

    const-string v7, "DEFERRED_SETUP"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    if-nez v2, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSuggestions, size:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    const-string v11, "isShow"

    if-lez v9, :cond_2

    .line 68
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/settings/suggestions/Suggestion;

    .line 69
    invoke-virtual {v9}, Landroid/service/settings/suggestions/Suggestion;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 70
    invoke-virtual {v9}, Landroid/service/settings/suggestions/Suggestion;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 71
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPendingIntent:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_1

    .line 72
    invoke-virtual {v12}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DeferredSettingsSuggestionActivity"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 73
    iput v8, v7, Landroid/os/Message;->what:I

    .line 74
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    invoke-interface {v5, v11, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    iget-object p0, p0, Lcom/android/settings/DeferredSetupHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    sub-long/2addr v3, v0

    const-wide/16 v0, 0xc8

    cmp-long v0, v3, v0

    if-ltz v0, :cond_3

    return-void

    .line 86
    :cond_3
    invoke-interface {v5, v11, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    iput v10, v7, Landroid/os/Message;->what:I

    .line 88
    iget-object p0, p0, Lcom/android/settings/DeferredSetupHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showSuggestionIfNeed()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/DeferredSetupHelper;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/android/settings/DeferredSetupHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/DeferredSetupHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/DeferredSetupHelper;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getSuggestions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    const-string v0, "DeferredSetupHelper"

    .line 93
    invoke-direct {p0}, Lcom/android/settings/DeferredSetupHelper;->isReady()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 97
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/DeferredSetupHelper;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    invoke-interface {p0}, Landroid/service/settings/suggestions/ISuggestionService;->getSuggestions()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Error when calling getSuggestion()"

    .line 102
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_1
    move-exception p0

    const-string/jumbo v1, "mRemote service detached before able to query"

    .line 99
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public startLoad()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/android/settings/DeferredSetupHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DeferredSetupHelper;->mServiceIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/DeferredSetupHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    .line 42
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 41
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/DeferredSetupHelper;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/settings/DeferredSetupHelper;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    .line 48
    iget-object v0, p0, Lcom/android/settings/DeferredSetupHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/DeferredSetupHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method
