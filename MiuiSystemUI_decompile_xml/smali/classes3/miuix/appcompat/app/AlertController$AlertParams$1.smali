.class Lmiuix/appcompat/app/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$1;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 2
    iput-object p6, p0, Lmiuix/appcompat/app/AlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    .line 4
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    move-result-object p3

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams$1;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 6
    iget-object v0, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    aget-boolean v0, v0, p1

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    .line 16
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 22
    invoke-virtual {p3, p0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 23
    if-nez p2, :cond_1

    .line 26
    invoke-static {p3}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    .line 28
    :cond_1
    const p0, 0x1020014    # @android:id/text1

    .line 31
    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p0

    .line 37
    check-cast p0, Landroid/widget/TextView;

    .line 38
    invoke-static {p0}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 40
    return-object p3
    .line 43
.end method
