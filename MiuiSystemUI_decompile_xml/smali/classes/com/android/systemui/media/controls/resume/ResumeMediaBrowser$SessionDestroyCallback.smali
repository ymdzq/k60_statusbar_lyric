.class public final Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$SessionDestroyCallback;
.super Landroid/media/session/MediaController$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 2
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onSessionDestroyed()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mLogger:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowserLogger;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->isBrowserConnected()Z

    .line 6
    move-result v0

    .line 9
    iget-object v2, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 10
    iget-object v2, v2, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 17
    sget-object v4, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowserLogger$logSessionDestroyed$2;->INSTANCE:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowserLogger$logSessionDestroyed$2;

    .line 19
    const-string v5, "MediaBrowser"

    .line 21
    iget-object v1, v1, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowserLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 23
    const/4 v6, 0x0

    .line 25
    invoke-virtual {v1, v5, v3, v4, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 26
    move-result-object v3

    .line 29
    invoke-interface {v3, v0}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 30
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    invoke-interface {v3, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->disconnect()V

    .line 45
    return-void
    .line 48
.end method
