.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    .line 8
    check-cast p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;

    .line 10
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    .line 12
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 17
    :goto_0
    xor-int/lit8 p0, p0, 0x1

    .line 18
    return p0

    .line 20
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    .line 21
    check-cast p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;

    .line 23
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;->uniqueName:Ljava/lang/CharSequence;

    .line 25
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 30
    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method
