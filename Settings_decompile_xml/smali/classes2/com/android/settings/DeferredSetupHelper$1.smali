.class Lcom/android/settings/DeferredSetupHelper$1;
.super Ljava/lang/Object;
.source "DeferredSetupHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeferredSetupHelper;->createServiceConnection()Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeferredSetupHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/DeferredSetupHelper;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/DeferredSetupHelper$1;->this$0:Lcom/android/settings/DeferredSetupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/android/settings/DeferredSetupHelper$1;->this$0:Lcom/android/settings/DeferredSetupHelper;

    invoke-static {p2}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/settings/suggestions/ISuggestionService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/DeferredSetupHelper;->-$$Nest$fputmRemoteService(Lcom/android/settings/DeferredSetupHelper;Landroid/service/settings/suggestions/ISuggestionService;)V

    .line 117
    iget-object p0, p0, Lcom/android/settings/DeferredSetupHelper$1;->this$0:Lcom/android/settings/DeferredSetupHelper;

    invoke-static {p0}, Lcom/android/settings/DeferredSetupHelper;->-$$Nest$mshowSuggestionIfNeed(Lcom/android/settings/DeferredSetupHelper;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/DeferredSetupHelper$1;->this$0:Lcom/android/settings/DeferredSetupHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/DeferredSetupHelper;->-$$Nest$fputmRemoteService(Lcom/android/settings/DeferredSetupHelper;Landroid/service/settings/suggestions/ISuggestionService;)V

    return-void
.end method
