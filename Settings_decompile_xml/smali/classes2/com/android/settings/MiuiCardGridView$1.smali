.class Lcom/android/settings/MiuiCardGridView$1;
.super Ljava/lang/Object;
.source "MiuiCardGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiCardGridView;->setData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiCardGridView;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiCardGridView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/MiuiCardGridView$1;->this$0:Lcom/android/settings/MiuiCardGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/android/settings/MiuiCardGridView$1;->this$0:Lcom/android/settings/MiuiCardGridView;

    invoke-static {p0}, Lcom/android/settings/MiuiCardGridView;->-$$Nest$fgetmData(Lcom/android/settings/MiuiCardGridView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/CardInfo;

    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/CardInfo;->isDisable()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/CardInfo;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CardInfo;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    .line 58
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
