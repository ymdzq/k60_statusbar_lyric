.class public final synthetic Lcom/android/systemui/people/PeopleSpaceTileView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/LauncherApps;

.field public final synthetic f$1:Landroid/app/people/PeopleSpaceTile;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/LauncherApps;Landroid/app/people/PeopleSpaceTile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/LauncherApps;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/people/PeopleSpaceTileView$$ExternalSyntheticLambda0;->f$1:Landroid/app/people/PeopleSpaceTile;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceTileView$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/LauncherApps;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceTileView$$ExternalSyntheticLambda0;->f$1:Landroid/app/people/PeopleSpaceTile;

    .line 4
    sget p1, Lcom/android/systemui/people/PeopleSpaceTileView;->$r8$clinit:I

    .line 6
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    .line 18
    move-result-object v5

    .line 21
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 22
    return-void
    .line 25
.end method
