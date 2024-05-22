.class public Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public mVarName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ":"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 7
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_7

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$000()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 37
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 39
    goto :goto_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$100()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 52
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 54
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$200()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 64
    if-nez v0, :cond_6

    .line 65
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$300()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    goto :goto_0

    .line 77
    :cond_2
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$400()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 88
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 90
    goto :goto_1

    .line 92
    :cond_3
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$500()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 103
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 105
    goto :goto_1

    .line 107
    :cond_4
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$600()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 118
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 120
    goto :goto_1

    .line 122
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 123
    const-string v0, "List: invalid item data type:"

    .line 125
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0

    .line 134
    :cond_6
    :goto_0
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 135
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 137
    :goto_1
    return-void

    .line 139
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 140
    const-string v0, "List: invalid item data "

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    throw p0
    .line 151
.end method

.method public static createColumnsInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const-string v1, ","

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    array-length v1, p0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    aget-object v3, p0, v2

    .line 25
    new-instance v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 27
    invoke-direct {v4, v3}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
    .line 38
.end method


# virtual methods
.method public validate(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$1;->$SwitchMap$com$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    .line 6
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result p0

    .line 13
    aget p0, v0, p0

    .line 14
    packed-switch p0, :pswitch_data_0

    .line 16
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :pswitch_0
    instance-of p0, p1, Ljava/lang/Float;

    .line 21
    return p0

    .line 23
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Long;

    .line 24
    return p0

    .line 26
    :pswitch_2
    instance-of p0, p1, Ljava/lang/Double;

    .line 27
    return p0

    .line 29
    :pswitch_3
    instance-of p0, p1, Ljava/lang/Integer;

    .line 30
    return p0

    .line 32
    :pswitch_4
    instance-of p0, p1, Landroid/graphics/Bitmap;

    .line 33
    return p0

    .line 35
    :pswitch_5
    instance-of p0, p1, Ljava/lang/String;

    .line 36
    return p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 40
.end method
