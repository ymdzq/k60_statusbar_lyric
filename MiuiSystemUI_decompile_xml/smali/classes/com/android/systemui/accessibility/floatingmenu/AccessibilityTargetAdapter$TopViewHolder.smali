.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$TopViewHolder;
.super Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$TopViewHolder;->$r8$classId:I

    .line 2
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final updateItemPadding(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$TopViewHolder;->$r8$classId:I

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    const/4 v0, 0x1

    .line 10
    if-gt p2, v0, :cond_0

    .line 11
    move p2, p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, p1, p1, p1, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 16
    return-void

    .line 19
    :goto_1
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 20
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 24
.end method
