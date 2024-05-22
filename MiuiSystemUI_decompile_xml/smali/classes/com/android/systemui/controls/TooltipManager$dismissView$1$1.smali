.class public final Lcom/android/systemui/controls/TooltipManager$dismissView$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/TooltipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/TooltipManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/TooltipManager$dismissView$1$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/TooltipManager$dismissView$1$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/TooltipManager;->hide(Z)V

    .line 5
    return-void
    .line 8
.end method
