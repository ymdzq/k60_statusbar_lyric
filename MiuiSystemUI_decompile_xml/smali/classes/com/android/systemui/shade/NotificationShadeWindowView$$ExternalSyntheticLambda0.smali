.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
