.class public final synthetic Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;->f$2:Ljava/util/Map;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;->f$3:[I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;->f$2:Ljava/util/Map;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;->f$3:[I

    .line 8
    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getDataFromContacts(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V

    .line 10
    return-void
    .line 13
.end method
