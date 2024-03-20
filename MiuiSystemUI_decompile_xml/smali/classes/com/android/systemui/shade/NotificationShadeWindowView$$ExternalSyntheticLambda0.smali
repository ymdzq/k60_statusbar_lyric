.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/view/FloatingActionMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/view/FloatingActionMode;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/view/FloatingActionMode;

    .line 2
    sget v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow()V

    .line 6
    const/4 p0, 0x1

    .line 9
    return p0
    .line 10
.end method
