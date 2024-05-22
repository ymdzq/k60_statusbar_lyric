.class Lmiuix/appcompat/app/AlertController$ButtonInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mButton:Lmiuix/internal/widget/GroupButton;

.field private mMsg:Landroid/os/Message;

.field private final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mStyle:I

.field private final mText:Ljava/lang/CharSequence;

.field private final mWhich:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mText:Ljava/lang/CharSequence;

    .line 9
    iput p2, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;

    .line 11
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    iput p4, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mWhich:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILandroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mText:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I

    .line 4
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mWhich:I

    return-void
.end method

.method public static synthetic access$1400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$1500(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$402(Lmiuix/appcompat/app/AlertController$ButtonInfo;Lmiuix/internal/widget/GroupButton;)Lmiuix/internal/widget/GroupButton;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;

    .line 2
    return-object p1
    .line 4
.end method

.method public static synthetic access$500(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/os/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$502(Lmiuix/appcompat/app/AlertController$ButtonInfo;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;

    .line 2
    return-object p1
    .line 4
.end method

.method public static synthetic access$800(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mText:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$900(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mWhich:I

    .line 2
    return p0
    .line 4
.end method
