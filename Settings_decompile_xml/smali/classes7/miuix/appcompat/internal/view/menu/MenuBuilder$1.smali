.class Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/MenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/MenuBuilder;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;->this$0:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1124
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    check-cast p2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;->compare(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)I

    move-result p0

    return p0
.end method

.method public compare(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)I
    .locals 3

    .line 1127
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result p0

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    .line 1128
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1129
    :cond_1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result p0

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v0

    if-eq p0, v0, :cond_3

    .line 1130
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 1132
    :cond_3
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result p0

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
