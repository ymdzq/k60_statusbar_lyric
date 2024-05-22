.class public final Landroidx/slice/widget/EventInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public actionCount:I

.field public actionIndex:I

.field public actionPosition:I

.field public final actionType:I

.field public final rowIndex:I

.field public final rowTemplateType:I

.field public final sliceMode:I

.field public state:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    .line 5
    iput p2, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 7
    iput p3, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    .line 9
    iput p4, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    .line 11
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 14
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 17
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 19
    iput p1, p0, Landroidx/slice/widget/EventInfo;->state:I

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "mode="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object v1, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Landroidx/slice/widget/SliceView$3;

    .line 9
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    iget v3, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    .line 13
    if-eq v3, v2, :cond_2

    .line 15
    if-eq v3, v1, :cond_1

    .line 17
    const/4 v4, 0x3

    .line 19
    if-eq v3, v4, :cond_0

    .line 20
    const-string/jumbo v4, "unknown mode: "

    .line 22
    invoke-static {v4, v3}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v3, "MODE SHORTCUT"

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    const-string v3, "MODE LARGE"

    .line 33
    goto :goto_0

    .line 35
    :cond_2
    const-string v3, "MODE SMALL"

    .line 36
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v3, ", actionType="

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, "TIME_PICK"

    .line 46
    const-string v4, "DATE_PICK"

    .line 48
    const-string v5, "SELECTION"

    .line 50
    const-string v6, "SLIDER"

    .line 52
    const-string v7, "TOGGLE"

    .line 54
    iget v8, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 56
    packed-switch v8, :pswitch_data_0

    .line 58
    const-string/jumbo v9, "unknown action: "

    .line 61
    invoke-static {v9, v8}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 64
    move-result-object v8

    .line 67
    goto :goto_1

    .line 68
    :pswitch_0
    move-object v8, v3

    .line 69
    goto :goto_1

    .line 70
    :pswitch_1
    move-object v8, v4

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    move-object v8, v5

    .line 73
    goto :goto_1

    .line 74
    :pswitch_3
    const-string v8, "SEE MORE"

    .line 75
    goto :goto_1

    .line 77
    :pswitch_4
    const-string v8, "CONTENT"

    .line 78
    goto :goto_1

    .line 80
    :pswitch_5
    move-object v8, v6

    .line 81
    goto :goto_1

    .line 82
    :pswitch_6
    const-string v8, "BUTTON"

    .line 83
    goto :goto_1

    .line 85
    :pswitch_7
    move-object v8, v7

    .line 86
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v8, ", rowTemplateType="

    .line 90
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v8, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    .line 95
    packed-switch v8, :pswitch_data_1

    .line 97
    const-string/jumbo v3, "unknown row type: "

    .line 100
    invoke-static {v3, v8}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 106
    goto :goto_2

    .line 107
    :pswitch_8
    move-object v3, v4

    .line 108
    goto :goto_2

    .line 109
    :pswitch_9
    move-object v3, v5

    .line 110
    goto :goto_2

    .line 111
    :pswitch_a
    const-string v3, "PROGRESS"

    .line 112
    goto :goto_2

    .line 114
    :pswitch_b
    move-object v3, v6

    .line 115
    goto :goto_2

    .line 116
    :pswitch_c
    move-object v3, v7

    .line 117
    goto :goto_2

    .line 118
    :pswitch_d
    const-string v3, "MESSAGING"

    .line 119
    goto :goto_2

    .line 121
    :pswitch_e
    const-string v3, "GRID"

    .line 122
    goto :goto_2

    .line 124
    :pswitch_f
    const-string v3, "LIST"

    .line 125
    goto :goto_2

    .line 127
    :pswitch_10
    const-string v3, "SHORTCUT"

    .line 128
    :goto_2
    :pswitch_11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v3, ", rowIndex="

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v3, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v3, ", actionPosition="

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v3, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 148
    if-eqz v3, :cond_5

    .line 150
    if-eq v3, v2, :cond_4

    .line 152
    if-eq v3, v1, :cond_3

    .line 154
    const-string/jumbo v1, "unknown position: "

    .line 156
    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 162
    goto :goto_3

    .line 163
    :cond_3
    const-string v1, "CELL"

    .line 164
    goto :goto_3

    .line 166
    :cond_4
    const-string v1, "END"

    .line 167
    goto :goto_3

    .line 169
    :cond_5
    const-string v1, "START"

    .line 170
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", actionIndex="

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ", actionCount="

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, ", state="

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget p0, p0, Landroidx/slice/widget/EventInfo;->state:I

    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object p0

    .line 208
    return-object p0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 210
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_11
    .end packed-switch
    .line 230
.end method
