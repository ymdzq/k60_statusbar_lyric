.class public final Lcom/android/systemui/people/ui/view/PeopleViewBinder$bindTileView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $onTileClicked:Lkotlin/jvm/functions/Function1;

.field public final synthetic $tile:Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bindTileView$1;->$onTileClicked:Lkotlin/jvm/functions/Function1;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bindTileView$1;->$tile:Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bindTileView$1;->$onTileClicked:Lkotlin/jvm/functions/Function1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bindTileView$1;->$tile:Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    .line 4
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
    .line 9
.end method
