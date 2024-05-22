.class public final synthetic Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

.field public final synthetic f$1:Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter;Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 15
    move-result p0

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->selectPosition(I)V

    .line 19
    return-void

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 30
    move-result p0

    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne p0, v1, :cond_0

    .line 35
    goto/16 :goto_2

    .line 37
    :cond_0
    iget v1, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 39
    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->selectPosition(I)V

    .line 43
    goto/16 :goto_2

    .line 46
    :cond_1
    iget v1, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 48
    iget-object v2, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

    .line 50
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x1

    .line 53
    iget v5, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mMinNumTiles:I

    .line 54
    const/4 v6, 0x0

    .line 56
    if-ge p0, v1, :cond_3

    .line 57
    iget-object v1, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 61
    move-result v1

    .line 64
    if-le v1, v5, :cond_2

    .line 65
    move v1, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v1, v3

    .line 69
    :goto_1
    if-eqz v1, :cond_3

    .line 70
    check-cast v2, Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 77
    check-cast v1, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 78
    iget-object v2, v1, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 80
    iget-object v2, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 82
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 87
    const v3, 0x7f1300c2    # @string/accessibility_qs_edit_move_tile 'Move %1$s'

    .line 88
    iget-object v4, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 96
    iget-object v3, v1, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 97
    iget-object v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 99
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 101
    move-result-object v3

    .line 104
    const v5, 0x7f1300c5    # @string/accessibility_qs_edit_remove_tile 'Remove %1$s'

    .line 105
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    move-result-object v3

    .line 111
    filled-new-array {v2, v3}, [Ljava/lang/CharSequence;

    .line 112
    move-result-object v2

    .line 115
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 116
    const v5, 0x7f140006    # @style/AlertDialog.Theme.DayNight

    .line 118
    invoke-direct {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 121
    new-instance v4, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda1;

    .line 124
    invoke-direct {v4, v0, p0, v1, p1}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter;ILcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;Landroid/view/View;)V

    .line 126
    invoke-virtual {v3, v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda1;)V

    .line 129
    const/high16 p0, 0x1040000    # @android:string/cancel

    .line 132
    invoke-virtual {v3, p0, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 134
    invoke-virtual {v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 137
    move-result-object p0

    .line 140
    sget p1, Lcom/miui/systemui/statusbar/phone/MiuiSystemUIDialog;->$r8$clinit:I

    .line 141
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 143
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 147
    move-result-object p1

    .line 150
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 151
    or-int/lit8 v0, v0, 0x10

    .line 153
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 155
    invoke-static {p0}, Lcom/miui/systemui/statusbar/phone/MiuiSystemUIDialog;->applyFlags(Lmiuix/appcompat/app/AlertDialog;)V

    .line 157
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 160
    goto :goto_2

    .line 163
    :cond_3
    iget p1, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 164
    if-ge p0, p1, :cond_5

    .line 166
    iget-object p1, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 170
    move-result p1

    .line 173
    if-le p1, v5, :cond_4

    .line 174
    move v3, v4

    .line 176
    :cond_4
    if-nez v3, :cond_5

    .line 177
    iput p0, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityFromIndex:I

    .line 179
    check-cast v2, Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    move-result-object p0

    .line 186
    check-cast p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 187
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 189
    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 191
    iput-object p0, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityFromLabel:Ljava/lang/CharSequence;

    .line 193
    const/4 p0, 0x2

    .line 195
    iput p0, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 196
    iput-boolean v4, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mNeedsFocus:Z

    .line 198
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 200
    goto :goto_2

    .line 203
    :cond_5
    iput p0, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityFromIndex:I

    .line 204
    check-cast v2, Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    move-result-object p0

    .line 211
    check-cast p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 212
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 214
    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 216
    iput-object p0, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityFromLabel:Ljava/lang/CharSequence;

    .line 218
    iput v4, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 220
    iget p0, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 222
    add-int/lit8 p1, p0, 0x1

    .line 224
    iput p1, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 226
    invoke-virtual {v2, p0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 228
    iget p0, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 231
    add-int/2addr p0, v4

    .line 233
    iput p0, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 234
    iput-boolean v4, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mNeedsFocus:Z

    .line 236
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 238
    :goto_2
    return-void

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 242
.end method
