.class public final Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# static fields
.field public static final INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    .line 2
    invoke-direct {v0}, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;-><init>()V

    .line 4
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final checkRtl(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    add-int/2addr p2, p0

    .line 3
    const/4 v0, 0x2

    .line 4
    move v1, p0

    .line 5
    move v2, v0

    .line 6
    :goto_0
    if-ge v1, p2, :cond_2

    .line 7
    if-ne v2, v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 11
    move-result v2

    .line 14
    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    .line 15
    move-result v2

    .line 18
    sget-object v3, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 19
    const/4 v3, 0x1

    .line 21
    if-eqz v2, :cond_1

    .line 22
    if-eq v2, v3, :cond_0

    .line 24
    if-eq v2, v0, :cond_0

    .line 26
    packed-switch v2, :pswitch_data_0

    .line 28
    move v2, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :pswitch_0
    move v2, p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :pswitch_1
    move v2, v3

    .line 35
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    return v2

    .line 39
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 40
.end method
