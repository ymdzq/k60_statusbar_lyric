.class public final synthetic Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/slice/core/SliceQuery$Filter;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 6
    iput-object p3, p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final filter(Landroidx/slice/SliceItem;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    .line 5
    iget-object v3, p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 7
    const/4 v4, 0x0

    .line 9
    iget-object p0, p0, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 12
    goto :goto_3

    .line 15
    :pswitch_0
    invoke-static {p1, p0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    invoke-static {p1, v3}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    invoke-static {p1, v2}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 28
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    move v1, v4

    .line 35
    :goto_0
    return v1

    .line 36
    :pswitch_1
    invoke-static {p1, p0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    .line 37
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    invoke-static {p1, v3}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 43
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    invoke-static {p1, v2}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 49
    move-result p0

    .line 52
    if-nez p0, :cond_1

    .line 53
    goto :goto_1

    .line 55
    :cond_1
    move v1, v4

    .line 56
    :goto_1
    return v1

    .line 57
    :pswitch_2
    invoke-static {p1, p0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    .line 58
    move-result p0

    .line 61
    if-eqz p0, :cond_2

    .line 62
    invoke-static {p1, v3}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 64
    move-result p0

    .line 67
    if-eqz p0, :cond_2

    .line 68
    invoke-static {p1, v2}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 70
    move-result p0

    .line 73
    if-nez p0, :cond_2

    .line 74
    goto :goto_2

    .line 76
    :cond_2
    move v1, v4

    .line 77
    :goto_2
    return v1

    .line 78
    :goto_3
    invoke-static {p1, p0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    .line 79
    move-result p0

    .line 82
    if-eqz p0, :cond_3

    .line 83
    invoke-static {p1, v3}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 85
    move-result p0

    .line 88
    if-eqz p0, :cond_3

    .line 89
    invoke-static {p1, v2}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 91
    move-result p0

    .line 94
    if-nez p0, :cond_3

    .line 95
    goto :goto_4

    .line 97
    :cond_3
    move v1, v4

    .line 98
    :goto_4
    return v1

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 100
.end method
