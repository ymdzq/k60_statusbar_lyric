.class Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 5
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->-$$Nest$mupdateDisplayLayout(Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;)V

    .line 7
    return-void
    .line 10
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 5
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->-$$Nest$mupdateDisplayLayout(Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;)V

    .line 7
    return-void
    .line 10
.end method

.method public bridge synthetic onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onFixedRotationFinished(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onFixedRotationStarted(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onKeepClearAreasChanged(ILjava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
