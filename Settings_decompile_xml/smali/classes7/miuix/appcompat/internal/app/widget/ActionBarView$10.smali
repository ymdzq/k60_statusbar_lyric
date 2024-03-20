.class Lmiuix/appcompat/internal/app/widget/ActionBarView$10;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 369
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 370
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$902(Lmiuix/appcompat/internal/app/widget/ActionBarView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 372
    :cond_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 373
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
