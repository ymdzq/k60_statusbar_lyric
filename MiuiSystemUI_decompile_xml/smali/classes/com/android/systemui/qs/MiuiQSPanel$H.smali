.class public final Lcom/android/systemui/qs/MiuiQSPanel$H;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/MiuiQSPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/MiuiQSPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel$H;->this$0:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_5

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel$H;->this$0:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    check-cast v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 12
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 14
    if-eqz p1, :cond_0

    .line 16
    move p1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v1

    .line 20
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    instance-of v3, v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 24
    if-eqz v3, :cond_4

    .line 26
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mDetailRecord:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 28
    if-eqz v3, :cond_1

    .line 30
    move v1, v2

    .line 32
    :cond_1
    if-ne v1, p1, :cond_2

    .line 33
    if-ne v3, v0, :cond_2

    .line 35
    goto/16 :goto_1

    .line 37
    :cond_2
    if-eqz p1, :cond_3

    .line 39
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 41
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 43
    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 47
    if-nez v1, :cond_3

    .line 49
    goto/16 :goto_1

    .line 51
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 53
    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    .line 55
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 58
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    .line 60
    move-result v1

    .line 63
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 64
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    .line 66
    move-result v2

    .line 69
    div-int/lit8 v2, v2, 0x2

    .line 70
    add-int/2addr v2, v1

    .line 72
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 73
    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getDetailY()I

    .line 75
    move-result v1

    .line 78
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 79
    invoke-interface {v3, v0}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->getOffsetTop(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)I

    .line 81
    move-result v3

    .line 84
    add-int/2addr v3, v1

    .line 85
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    .line 86
    move-result v1

    .line 89
    add-int/2addr v1, v3

    .line 90
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/systemui/qs/MiuiQSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;ZII)V

    .line 91
    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/systemui/qs/MiuiQSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;ZII)V

    .line 95
    goto :goto_1

    .line 98
    :cond_5
    const/16 v3, 0x3e9

    .line 99
    if-ne v0, v3, :cond_7

    .line 101
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel$H;->this$0:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 103
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    check-cast p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    instance-of v0, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 112
    if-eqz v0, :cond_6

    .line 114
    iget-object v0, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 116
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    .line 118
    move-result v0

    .line 121
    iget-object v1, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 122
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    .line 124
    move-result v1

    .line 127
    div-int/lit8 v1, v1, 0x2

    .line 128
    add-int/2addr v1, v0

    .line 130
    iget-object v0, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 131
    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTileView;->getDetailY()I

    .line 133
    move-result v0

    .line 136
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 137
    invoke-interface {v3, p1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->getOffsetTop(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)I

    .line 139
    move-result p1

    .line 142
    add-int/2addr p1, v0

    .line 143
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    .line 144
    move-result v0

    .line 147
    add-int/2addr v0, p1

    .line 148
    iget p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mEditTopOffset:I

    .line 149
    add-int/2addr v0, p1

    .line 151
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 152
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->show(IIZ)V

    .line 154
    goto :goto_1

    .line 157
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 158
    invoke-virtual {p0, v1, v1, v2}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->show(IIZ)V

    .line 160
    goto :goto_1

    .line 163
    :cond_7
    const/4 v1, 0x3

    .line 164
    if-ne v0, v1, :cond_8

    .line 165
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel$H;->this$0:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 167
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    check-cast p1, Ljava/lang/CharSequence;

    .line 171
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 173
    :cond_8
    :goto_1
    return-void
    .line 176
.end method
