.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getRank(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEntryReorderingAllowed(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_2

    .line 16
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 19
    const/4 v0, -0x1

    .line 21
    if-eqz p0, :cond_1

    .line 22
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    move p0, v0

    .line 27
    :goto_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 28
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 30
    if-eqz v1, :cond_2

    .line 32
    iget v1, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    .line 34
    goto :goto_1

    .line 36
    :cond_2
    move v1, v0

    .line 37
    :goto_1
    if-eq p0, v1, :cond_3

    .line 38
    goto :goto_2

    .line 40
    :cond_3
    iget p0, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    .line 41
    if-ne p0, v0, :cond_4

    .line 43
    :goto_2
    const/4 p0, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p0

    .line 50
    :goto_3
    return-object p0
    .line 51
.end method
