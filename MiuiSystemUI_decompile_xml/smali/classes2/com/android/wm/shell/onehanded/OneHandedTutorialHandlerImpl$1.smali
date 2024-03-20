.class Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;

    .line 2
    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->-$$Nest$fputmShownCounts(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;)V

    .line 4
    return-void
    .line 7
.end method
