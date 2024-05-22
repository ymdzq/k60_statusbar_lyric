.class Lcom/miui/maml/elements/TimepanelScreenElement$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/TimepanelScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/TimepanelScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$000(Lcom/miui/maml/elements/TimepanelScreenElement;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 11
    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 15
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    move-result-wide v1

    .line 25
    iget-object v3, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 26
    iget-object v3, v3, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 28
    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 30
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 33
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$100(Lcom/miui/maml/elements/TimepanelScreenElement;)Lcom/miui/maml/data/Expression;

    .line 35
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 41
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$100(Lcom/miui/maml/elements/TimepanelScreenElement;)Lcom/miui/maml/data/Expression;

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 57
    iget-object v2, v2, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 59
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 61
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 68
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$200(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 74
    iget-object v2, v2, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 76
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    .line 78
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 82
    invoke-static {v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$300(Lcom/miui/maml/elements/TimepanelScreenElement;)Z

    .line 84
    move-result v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 90
    invoke-static {v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$400(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/CharSequence;

    .line 92
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v2

    .line 99
    if-eqz v2, :cond_3

    .line 100
    return-void

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 103
    invoke-static {v2, v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$402(Lcom/miui/maml/elements/TimepanelScreenElement;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 105
    new-instance v2, Landroid/graphics/Canvas;

    .line 108
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 113
    const/4 v3, 0x0

    .line 115
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 116
    move v0, v3

    .line 119
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 120
    move-result v4

    .line 123
    if-ge v3, v4, :cond_5

    .line 124
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 126
    move-result v4

    .line 129
    iget-object v5, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 130
    invoke-static {v5, v4}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$500(Lcom/miui/maml/elements/TimepanelScreenElement;C)Landroid/graphics/Bitmap;

    .line 132
    move-result-object v4

    .line 135
    if-eqz v4, :cond_4

    .line 136
    int-to-float v5, v0

    .line 138
    const/4 v6, 0x0

    .line 139
    const/4 v7, 0x0

    .line 140
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 144
    move-result v4

    .line 147
    add-int/2addr v4, v0

    .line 148
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 149
    invoke-static {v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$600(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    .line 151
    move-result v0

    .line 154
    add-int/2addr v0, v4

    .line 155
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 156
    goto :goto_0

    .line 158
    :cond_5
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 159
    iget-object v1, v1, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 161
    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 163
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 166
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$600(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    .line 168
    move-result v2

    .line 171
    sub-int/2addr v0, v2

    .line 172
    invoke-static {v1, v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$702(Lcom/miui/maml/elements/TimepanelScreenElement;I)I

    .line 173
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 176
    invoke-static {v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$700(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    .line 178
    move-result v1

    .line 181
    int-to-double v1, v1

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 183
    move-result-wide v1

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->setActualWidth(D)V

    .line 187
    iget-object p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 190
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 192
    return-void
    .line 195
.end method
