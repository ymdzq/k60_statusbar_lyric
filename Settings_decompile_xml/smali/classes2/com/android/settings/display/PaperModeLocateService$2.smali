.class Lcom/android/settings/display/PaperModeLocateService$2;
.super Ljava/lang/Object;
.source "PaperModeLocateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PaperModeLocateService;->requestLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PaperModeLocateService;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeLocateService;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/display/PaperModeLocateService$2;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/display/PaperModeLocateService$2;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-static {p0}, Lcom/android/settings/display/PaperModeLocateService;->-$$Nest$mremoveLocationUpdates(Lcom/android/settings/display/PaperModeLocateService;)V

    return-void
.end method
