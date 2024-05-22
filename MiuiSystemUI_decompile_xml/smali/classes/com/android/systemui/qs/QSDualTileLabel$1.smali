.class public final Lcom/android/systemui/qs/QSDualTileLabel$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSDualTileLabel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDualTileLabel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel$1;->this$0:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    sub-int/2addr p8, p6

    .line 2
    sub-int/2addr p4, p2

    .line 3
    if-eq p8, p4, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel$1;->this$0:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 6
    sget p1, Lcom/android/systemui/qs/QSDualTileLabel;->$r8$clinit:I

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method
