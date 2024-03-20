.class public final Lcom/android/systemui/qs/QSDetailContent$SelectableItem;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/qs/QSDetailContent$Item;


# instance fields
.field public clickToDisconnect:Z

.field public icon2Res:I

.field public iconRes:I

.field public secondarySummary:Ljava/lang/CharSequence;

.field public selectable:Z

.field public selected:Z

.field public summary:Ljava/lang/CharSequence;

.field public tag:Ljava/lang/Object;

.field public title:Ljava/lang/CharSequence;


# virtual methods
.method public final getTag()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->tag:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/16 p0, 0xe9

    .line 2
    return p0
    .line 4
.end method
