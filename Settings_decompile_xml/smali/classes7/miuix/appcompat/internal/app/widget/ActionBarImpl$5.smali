.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastWidth:I

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method public static synthetic $r8$lambda$sV9O4mjR57o-UPpUfxa_qxxLDrA(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lambda$onLayoutChange$0()V

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 381
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    return-void
.end method

.method private synthetic lambda$onLayoutChange$0()V
    .locals 2

    .line 391
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object v1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 387
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    if-ne p1, p4, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 388
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    .line 389
    iput p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    .line 390
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object p1

    new-instance p2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
