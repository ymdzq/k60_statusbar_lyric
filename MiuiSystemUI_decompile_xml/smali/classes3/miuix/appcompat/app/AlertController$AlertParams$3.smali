.class Lmiuix/appcompat/app/AlertController$AlertParams$3;
.super Landroid/widget/SimpleCursorAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController$AlertParams;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$3;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 2
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move v2, p3

    .line 6
    move-object v3, p4

    .line 7
    move-object v4, p5

    .line 8
    move-object v5, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    if-nez p2, :cond_0

    .line 6
    invoke-static {p0}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    .line 8
    :cond_0
    const p1, 0x1020014    # @android:id/text1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/TextView;

    .line 18
    invoke-static {p1}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 20
    return-object p0
    .line 23
.end method
