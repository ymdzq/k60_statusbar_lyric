.class public final Landroidx/appcompat/widget/ActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 4
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 8
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 11
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 13
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 15
    return-void

    .line 18
    :goto_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 19
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 22
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const/4 p0, 0x0

    .line 29
    throw p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method

.method public final onInvalidated()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 11
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 14
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 16
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 18
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 22
.end method
